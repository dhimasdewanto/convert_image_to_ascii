import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../settings/domain/models/settings_model.dart';
import '../../../domain/use_cases/get_string_buffer.dart';

part 'image_process_bloc.freezed.dart';
part 'image_process_event.dart';
part 'image_process_state.dart';

class ImageProcessBloc extends Bloc<ImageProcessEvent, ImageProcessState> {
  ImageProcessBloc({
    @required this.getStringBuffer,
    @required this.imagePicker,
  }) : super(const ImageProcessState.initial());

  final GetStringBuffer getStringBuffer;
  final ImagePicker imagePicker;

  @override
  Stream<ImageProcessState> mapEventToState(
    ImageProcessEvent event,
  ) async* {
    yield* event.when(
      pickImage: (settingsModel) async* {
        yield* state.maybeWhen(
          loading: () async* {},
          orElse: () async* {
            yield const ImageProcessState.loading();
            final optionImageFile = await _pickImage();
            yield* optionImageFile.fold(
              () async* {
                yield const ImageProcessState.error();
              },
              (imageFile) async* {
                yield ImageProcessState.imagePicked(
                  imageFile: imageFile,
                );
                add(
                  ImageProcessEvent.processImage(
                    settingsModel: settingsModel,
                  ),
                );
              },
            );
          },
        );
      },
      processImage: (settingsModel) async* {
        yield* state.maybeWhen(
          orElse: () async* {},
          loading: () async* {},
          imagePicked: (imageFile) async* {
            yield const ImageProcessState.loading();
            final textBuffer = await getStringBuffer(
              GetStringBufferParams(
                imageFile: imageFile,
                listCharacters: settingsModel.listCharacters,
                listColorValues: settingsModel.listColorValues,
              ),
            );
            yield ImageProcessState.showResult(
              imageFile: imageFile,
              textBuffer: textBuffer,
            );
          },
        );
      },
    );
  }

  Future<Option<File>> _pickImage() async {
    final task = await Task(
      () => imagePicker.getImage(
        source: ImageSource.gallery,
      ),
    ).attempt().mapNullToFailure().run();

    return task.fold(
      (failure) => none(),
      (pickedFile) => some(
        File(pickedFile.path),
      ),
    );
  }
}

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Object, U>> mapNullToFailure() {
    return map((either) {
      return either.fold(
        left,
        (successData) {
          if (successData == null) {
            return left(Object);
          }
          return right(successData);
        },
      );
    });
  }
}
