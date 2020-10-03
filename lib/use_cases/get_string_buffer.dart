import 'dart:io';
import 'dart:typed_data';

import 'package:image/image.dart' as img;

import '../providers/level.dart';

class GetStringBuffer {
  Future<StringBuffer> call(
    File fileImage, {
    bool convertToGrayscale = false,
  }) async {
    final image = await _getImage(convertToGrayscale, fileImage);

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

  Future<img.Image> _getImage(bool convertToGrayscale, File fileImage) async {
    final bytes = await _getImageBytes(fileImage);
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

  Future<Uint8List> _getImageBytes(File fileImage) async {
    // final imageBytes = await rootBundle.load(_imagePath);
    // return imageBytes.buffer.asUint8List();
    return fileImage.readAsBytes();
  }

  int _abgrToArgb(int argbColor) {
    final r = (argbColor >> 16) & 0xFF;
    final b = argbColor & 0xFF;
    return (argbColor & 0xFF00FF00) | (b << 16) | r;
  }
}