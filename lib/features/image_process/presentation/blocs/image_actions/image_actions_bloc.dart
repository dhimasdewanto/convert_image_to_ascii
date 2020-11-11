import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/image_result_model.dart';

part 'image_actions_bloc.freezed.dart';
part 'image_actions_event.dart';
part 'image_actions_state.dart';

class ImageActionsBloc extends Bloc<ImageActionsEvent, ImageActionsState> {
  ImageActionsBloc() : super(const ImageActionsState.initial());

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
        try {
          await Clipboard.setData(
            ClipboardData(
              text: _imageResult.imageStringBuffer.toString(),
            ),
          );
          yield const ImageActionsState.successCopyText();
        } catch (e) {
          print(e);
        }
      },
    );
  }
}
