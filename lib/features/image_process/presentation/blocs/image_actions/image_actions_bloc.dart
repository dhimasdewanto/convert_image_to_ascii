import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../../core/snackbars.dart';
import '../../../domain/models/image_result_model.dart';
import '../../../domain/use_cases/image_actions/copy_text_to_clipboard.dart';
import '../../../domain/use_cases/image_actions/save_image.dart';

part 'image_actions_bloc.freezed.dart';
part 'image_actions_event.dart';
part 'image_actions_listener.dart';
part 'image_actions_state.dart';

class ImageActionsBloc extends Bloc<ImageActionsEvent, ImageActionsState> {
  ImageActionsBloc({
    required this.copyTextToClipboard,
    required this.saveImage,
  }) : super(const ImageActionsState.initial());

  final CopyTextToClipboard? copyTextToClipboard;
  final SaveImage? saveImage;

  late ImageResultModel _imageResult;

  static const _delayDuration = Duration(seconds: 5);

  @override
  Stream<ImageActionsState> mapEventToState(
    ImageActionsEvent event,
  ) async* {
    yield* event.when(
      resetState: () async* {
        yield const ImageActionsState.initial();
      },
      listenImageProcess: (
        imageResult,
      ) async* {
        _imageResult = imageResult;
        yield const ImageActionsState.success();
      },
      copyImageText: () async* {
        if (state is! _LoadingCopyTextState) {
          yield const ImageActionsState.loadingCopyText();

          final result = await copyTextToClipboard!(
            _imageResult.imageStringBuffer.toString(),
          );
          yield* result.fold(
            () async* {
              yield const ImageActionsState.successCopyText();
              Future.delayed(
                _delayDuration,
                () {
                  add(const ImageActionsEvent.resetState());
                },
              );
            },
            (failure) async* {
              yield const ImageActionsState.error();
            },
          );
        }
      },
      saveImage: (screenshotController) async* {
        if (state is! _LoadingSaveImageState) {
          yield const ImageActionsState.loadingSaveImage();

          final result = await saveImage!(
            SaveImageParams(
              screenshotController: screenshotController,
            ),
          );
          yield* result.fold(
            () async* {
              yield const ImageActionsState.successSaveImage();
              Future.delayed(
                _delayDuration,
                () {
                  add(const ImageActionsEvent.resetState());
                },
              );
            },
            (failure) async* {
              yield const ImageActionsState.error();
            },
          );
        }
      },
    );
  }
}
