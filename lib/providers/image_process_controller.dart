import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;

import 'level.dart';

class ImageProcessController {
  // static const _imagePath = 'assets/Photo by Ali Kazal on Unsplash.jpg';
  // static const _imagePath = 'assets/keanu.jpg';
  static const _imagePath = 'assets/bob_ross.jpg';
  // static const _imagePath = 'assets/lincoln.jpeg';
  // static const _imagePath = 'assets/rhoma.jpg';
  // static const _imagePath = 'assets/dhimas2.jpg';
  // static const _imagePath = 'assets/sendiri.png';
  // static const _imagePath = 'assets/hitler.jpg';
  // static const _imagePath = 'assets/kennedy.jpg';
  // static const _imagePath = 'assets/example_image.png';

  String get imagePath => _imagePath;

  Future<StringBuffer> getStringBuffer({
    bool convertToGrayscale = false,
  }) async {
    final image = await _getImage(convertToGrayscale);

    final textBuffer = StringBuffer();
    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final pixel = image.getPixelSafe(x, y);
        final argbColor = _abgrToArgb(pixel);
        _writeTextBuffer(
          argbColor,
          textBuffer,
        );
      }
      textBuffer.writeln("");
    }

    return textBuffer;
  }

  /// Write ASCII character from [StringBuffer].
  ///
  /// Note: [argbColor] 4278190080 = #000000.
  void _writeTextBuffer(
    int argbColor,
    StringBuffer textBuffer,
  ) {
    final convertedColor = argbColor;
    final chars = reversed ? levelChars.reversed.toList() : levelChars;

    if (convertedColor >= levelColors.first) {
      for (var i = 0; i < repeat; i++) {
        textBuffer.write(chars.first);
      }
    } else if (convertedColor <= levelColors.last) {
      for (var i = 0; i < repeat; i++) {
        textBuffer.write(chars.last);
      }
    } else {
      for (var index = 1; index < levelColors.length; index++) {
        final thisColor = levelColors[index];
        final prevColor = levelColors[index - 1];
        if (convertedColor >= thisColor && convertedColor <= prevColor) {
          for (var i = 0; i < repeat; i++) {
            textBuffer.write(chars[index]);
          }
        }
      }
    }
  }

  Future<img.Image> _getImage(bool convertToGrayscale) async {
    final bytes = await _getImageBytes();
    final image = img.decodeImage(bytes);
    final resizedImage = img.copyResize(
      image,
      width: imageWidth,
    );
    final jgpImage = img.decodeImage(
      img.encodeJpg(resizedImage),
    );

    if (convertToGrayscale) {
      return img.grayscale(jgpImage);
    }
    return jgpImage;
  }

  Future<Uint8List> _getImageBytes() async {
    final imageBytes = await rootBundle.load(_imagePath);
    return imageBytes.buffer.asUint8List();
  }

  int _abgrToArgb(int argbColor) {
    final r = (argbColor >> 16) & 0xFF;
    final b = argbColor & 0xFF;
    return (argbColor & 0xFF00FF00) | (b << 16) | r;
  }
}
