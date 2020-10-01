import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class GetImageController extends StateNotifier<File> {
  GetImageController() : super(null);

  final _picker = ImagePicker();

  Future<bool> pickImage() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) {
      return false;
    }
    state = File(pickedFile.path);
    return true;
  }
}
