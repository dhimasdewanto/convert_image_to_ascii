import 'dart:io';

import 'package:meta/meta.dart';

class ImageProcessModel {
  ImageProcessModel({
    @required this.imageFile,
    @required this.listColorValues,
    @required this.listCharacters,
    this.convertToGrayscale = true,
  });

  final bool convertToGrayscale;
  final File imageFile;
  final List<int> listColorValues;
  final List<String> listCharacters;
}
