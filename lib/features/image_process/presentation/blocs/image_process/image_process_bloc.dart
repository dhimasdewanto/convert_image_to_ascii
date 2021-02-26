import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../../core/navigators.dart';
import '../../../../settings/domain/use_cases/get_settings.dart';
import '../../../domain/models/image_result_model.dart';
import '../../../domain/use_cases/image_process/get_string_buffer.dart';
import '../../pages/result_page.dart';
import '../image_actions/image_actions_bloc.dart';

part 'image_process_bloc.freezed.dart';
part 'image_process_event.dart';
part 'image_process_listener.dart';
part 'image_process_state.dart';

class ImageProcessBloc extends Bloc<ImageProcessEvent, ImageProcessState> {
  ImageProcessBloc({
    @required this.getSettings,
    @required this.getStringBuffer,
    @required this.imagePicker,
    @required this.screenshotController,
  }) : super(const ImageProcessState.initial());

  final GetSettings getSettings;
  final GetStringBuffer getStringBuffer;
  final ImagePicker imagePicker;
  final ScreenshotController screenshotController;

  @override
  Stream<ImageProcessState> mapEventToState(
    ImageProcessEvent event,
  ) async* {
    yield* event.when(
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

            final resultSettings = await getSettings();
            yield* resultSettings.fold(
              (failure) async* {},
              (settings) async* {
                final imageResult = await getStringBuffer(
                  GetStringBufferParams(
                    imageFile: imageSource,
                    settings: settings,
                  ),
                );
                yield ImageProcessState.showResult(
                  imageResult: imageResult,
                );
              },
            );
          },
        );
      },
    );
  }

  Future<Option<File>> _pickImage() async {
    try {
      final pickedFile = await imagePicker.getImage(
        source: ImageSource.gallery,
      );
      return some(File(pickedFile.path));
    } catch (e) {
      return none();
    }
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
