import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/image_process_model.dart';
import '../../use_cases/get_string_buffer.dart';

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
      pickImage: () async* {
        yield* state.maybeWhen(
          loading: () async* {},
          orElse: () async* {
            yield const ImageProcessState.loading();
            final imageFile = await _pickImage();
            if (imageFile == null) {
              yield const ImageProcessState.error();
            } else {
              yield ImageProcessState.imagePicked(
                imageFile: imageFile,
              );
              add(const ImageProcessEvent.processImage());
            }
          },
        );
      },
      processImage: () async* {
        yield* state.maybeWhen(
          orElse: () async* {},
          loading: () async* {},
          imagePicked: (imageFile) async* {
            yield const ImageProcessState.loading();
            final textBuffer = await getStringBuffer(
              ImageProcessModel(
                imageFile: imageFile,
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
