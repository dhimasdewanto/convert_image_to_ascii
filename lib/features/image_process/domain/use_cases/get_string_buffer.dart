import 'dart:io';

import 'package:flutter/foundation.dart';

import '../../../../core/default_values.dart';
import 'get_string_buffer/process_string_buffer.dart';

class GetStringBuffer {
  Future<StringBuffer> call(GetStringBufferParams params) async {
    return compute(processStringBuffer, params);
  }
}

class GetStringBufferParams {
  GetStringBufferParams({
    @required this.imageFile,
    @required this.listColorValues,
    @required this.listCharacters,
    this.repeatedCharacters = defaultRepeatCharacter,
    this.imageWidth = defaultImageWidth,
    this.isColorReversed = defaultReverseColor,
    this.convertToGrayscale = true,
  });

  final bool convertToGrayscale;
  final File imageFile;
  final List<int> listColorValues;
  final List<String> listCharacters;
  final int repeatedCharacters;
  final bool isColorReversed;
  final int imageWidth;
}