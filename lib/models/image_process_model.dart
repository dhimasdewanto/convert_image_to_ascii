import 'dart:io';

import 'package:meta/meta.dart';

class ImageProcessModel {
  ImageProcessModel({
    @required this.imageFile,
    this.convertToGrayscale = false,
  });

  final bool convertToGrayscale;
  final File imageFile;
}
