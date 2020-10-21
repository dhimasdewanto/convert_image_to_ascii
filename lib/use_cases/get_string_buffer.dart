import 'package:flutter/foundation.dart';

import '../models/image_process_model.dart';
import 'get_image.dart';
import 'write_text_buffer.dart';

class GetStringBuffer {
  Future<StringBuffer> call(ImageProcessModel model) async {
    return compute(_process, model);
  }
}

Future<StringBuffer> _process(ImageProcessModel model) async {
  final image = await getImage(model);

  final textBuffer = StringBuffer();
  for (var y = 0; y < image.height; y++) {
    for (var x = 0; x < image.width; x++) {
      final pixel = image.getPixelSafe(x, y);
      final argbColor = _abgrToArgb(pixel);
      writeTextBuffer(
        argbColor: argbColor,
        textBuffer: textBuffer,
      );
    }
    textBuffer.writeln("");
  }

  return textBuffer;
}

int _abgrToArgb(int argbColor) {
  final r = (argbColor >> 16) & 0xFF;
  final b = argbColor & 0xFF;
  return (argbColor & 0xFF00FF00) | (b << 16) | r;
}
