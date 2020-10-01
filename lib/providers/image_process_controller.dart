import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;

import 'level.dart';

class ImageProcessController {
  static const _imagePath = 'assets/Photo by Ali Kazal on Unsplash.jpg';
  // static const _imagePath = 'assets/keanu.jpg';
  // static const _imagePath = 'assets/bob_ross.jpg';
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
          x: x,
          y: y,
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
    StringBuffer textBuffer, {
    int x,
    int y,
  }) {
    final convertedColor = argbColor;

    final chars = reversed ? levelChars.reversed : levelChars;

    const maxLevelColor = 4294000000;
    var levelColor = maxLevelColor;
    const reducer = 1000000;
    for (final char in chars) {
      if (convertedColor >= (levelColor - reducer) &&
          convertedColor <= levelColor) {
        for (var i = 0; i < repeat; i++) {
          textBuffer.write(char);
        }
      }
      levelColor -= reducer;
    }

    if (convertedColor >= maxLevelColor) {
      for (var i = 0; i < repeat; i++) {
        textBuffer.write(chars.last);
      }
    } else if (convertedColor <= levelColor) {
      for (var i = 0; i < repeat; i++) {
        textBuffer.write(chars.first);
      }
    }

    // BLACK = 4278190080
    // if (convertedColor >= 4293000000 && convertedColor <= 4294000000) {
    //   textBuffer.write("  "); // 1
    // } else if (convertedColor >= 4292000000 && convertedColor <= 4293000000) {
    //   textBuffer.write(".."); // 2
    // } else if (convertedColor >= 4291000000 && convertedColor <= 4292000000) {
    //   textBuffer.write(",,"); // 3
    // } else if (convertedColor >= 4290000000 && convertedColor <= 4291000000) {
    //   textBuffer.write("''"); // 4
    // } else if (convertedColor >= 4289000000 && convertedColor <= 4290000000) {
    //   textBuffer.write('""'); // 5
    // } else if (convertedColor >= 4288000000 && convertedColor <= 4289000000) {
    //   textBuffer.write(";;"); // 6
    // } else if (convertedColor >= 4287000000 && convertedColor <= 4288000000) {
    //   textBuffer.write("**"); // 7
    // } else if (convertedColor >= 4286000000 && convertedColor <= 4287000000) {
    //   textBuffer.write("//"); // 8
    // } else if (convertedColor >= 4285000000 && convertedColor <= 4286000000) {
    //   textBuffer.write("(("); // 9
    // } else if (convertedColor >= 4284000000 && convertedColor <= 4285000000) {
    //   textBuffer.write("[["); // 10
    // } else if (convertedColor >= 4283000000 && convertedColor <= 4284000000) {
    //   textBuffer.write("{{"); // 11
    // } else if (convertedColor >= 4282000000 && convertedColor <= 4283000000) {
    //   textBuffer.write("%%"); // 12
    // } else if (convertedColor >= 4281000000 && convertedColor <= 4282000000) {
    //   textBuffer.write("&&"); // 13
    // } else if (convertedColor >= 4280000000 && convertedColor <= 4281000000) {
    //   textBuffer.write("##"); // 14
    // } else if (convertedColor >= 4270000000 && convertedColor <= 4280000000) {
    //   textBuffer.write("@@"); // 15
    // } else {
    //   if (x != null && y != null && convertedColor > 0) {
    //     print("($x, $y): $convertedColor = ${Color(convertedColor)}");
    //   }
    //   textBuffer.write("  ");
    // }
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
