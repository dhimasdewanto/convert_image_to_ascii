import 'dart:io';

import 'package:meta/meta.dart';

class ImageProcessModel {
  ImageProcessModel({
    @required this.imageFile,
    this.convertToGrayscale = true,
  });

  final bool convertToGrayscale;
  final File imageFile;
}
