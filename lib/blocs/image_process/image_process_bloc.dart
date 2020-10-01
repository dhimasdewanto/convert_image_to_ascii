import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import 'image_process_mixin.dart';

part 'image_process_bloc.freezed.dart';
part 'image_process_event.dart';
part 'image_process_state.dart';

class ImageProcessBloc extends Bloc<ImageProcessEvent, ImageProcessState>
    with ImageProcessMixin {
  ImageProcessBloc({
    @required this.imagePicker,
  }) : super(const ImageProcessState.initial());

  final ImagePicker imagePicker;

  @override
  Stream<ImageProcessState> mapEventToState(
    ImageProcessEvent event,
  ) async* {
    yield* event.when(
      pickAndProcessImage: _pickAndProcessImage,
    );
  }

  Stream<ImageProcessState> _pickAndProcessImage() async* {
    final imageFile = await _pickImage();
    if (imageFile == null) {
      yield const ImageProcessState.error();
    } else {
      final textBuffer = await getStringBuffer(imageFile);
      yield ImageProcessState.show(
        imageFile: imageFile,
        textBuffer: textBuffer,
      );
    }
  }

  Future<File> _pickImage() async {
    final pickedFile = await imagePicker.getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) {
      return null;
    }
    return File(pickedFile.path);
  }
}
