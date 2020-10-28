import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';

import '../../../../settings/domain/models/settings_model.dart';
import '../../../domain/models/image_result_model.dart';
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

  SettingsModel settingsData;

  @override
  Stream<ImageProcessState> mapEventToState(
    ImageProcessEvent event,
  ) async* {
    yield* event.when(
      updateSettings: (settingsModel) async* {
        settingsData = settingsModel;
      },
      pickImage: () async* {
        yield* state.maybeWhen(
          loading: () async* {},
          orElse: () async* {
            yield const ImageProcessState.loading();
            final optionImageFile = await _pickImage();
            yield* optionImageFile.fold(
              () async* {
                yield const ImageProcessState.error();
              },
              (imageSource) async* {
                yield ImageProcessState.imagePicked(
                  imageSource: imageSource,
                );
                add(
                  const ImageProcessEvent.processImage(),
                );
              },
            );
          },
        );
      },
      processImage: () async* {
        yield* state.maybeWhen(
          orElse: () async* {},
          loading: () async* {},
          imagePicked: (imageSource) async* {
            yield const ImageProcessState.loading();
            final imageResult = await getStringBuffer(
              GetStringBufferParams(
                imageFile: imageSource,
                settings: settingsData,
              ),
            );
            yield ImageProcessState.showResult(
              imageSource: imageSource,
              imageResult: imageResult,
              convertedImageBytes: img.encodeJpg(imageResult.convertedImage),
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
