import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/image_result_model.dart';
import '../../../domain/use_cases/copy_text_to_clipboard.dart';

part 'image_actions_bloc.freezed.dart';
part 'image_actions_event.dart';
part 'image_actions_state.dart';

class ImageActionsBloc extends Bloc<ImageActionsEvent, ImageActionsState> {
  ImageActionsBloc({
    @required this.copyTextToClipboard,
  }) : super(const ImageActionsState.initial());

  final CopyTextToClipboard copyTextToClipboard;

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
      saveImage: () async* {},
    );
  }
}
