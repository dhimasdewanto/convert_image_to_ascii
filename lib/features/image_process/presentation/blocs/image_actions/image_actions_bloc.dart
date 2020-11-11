import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:screenshot/screenshot.dart';

import '../../../domain/models/image_result_model.dart';
import '../../../domain/use_cases/copy_text_to_clipboard.dart';
import '../../../domain/use_cases/save_image.dart';

part 'image_actions_bloc.freezed.dart';
part 'image_actions_event.dart';
part 'image_actions_state.dart';

class ImageActionsBloc extends Bloc<ImageActionsEvent, ImageActionsState> {
  ImageActionsBloc({
    @required this.copyTextToClipboard,
    @required this.saveImage,
  }) : super(const ImageActionsState.initial());

  final CopyTextToClipboard copyTextToClipboard;
  final SaveImage saveImage;

  ImageResultModel _imageResult;

  @override
  Stream<ImageActionsState> mapEventToState(
    ImageActionsEvent event,
  ) async* {
    yield* event.when(
      listenImageProcess: (
        imageSource,
        imageResult,
        convertedImageBytes,
      ) async* {
        _imageResult = imageResult;
      },
      copyImageText: () async* {
        final result = await copyTextToClipboard(
          _imageResult.imageStringBuffer.toString(),
        );
        yield* result.fold(
          () async* {
            yield const ImageActionsState.successCopyText();
          },
          (failure) async* {},
        );
      },
      saveImage: (screenshotController) async* {
        final result = await saveImage(
          SaveImageParams(
            screenshotController: screenshotController,
          ),
        );
        yield* result.fold(
          () async* {
            yield const ImageActionsState.successSaveImage();
          },
          (failure) async* {},
        );
      },
    );
  }
}
