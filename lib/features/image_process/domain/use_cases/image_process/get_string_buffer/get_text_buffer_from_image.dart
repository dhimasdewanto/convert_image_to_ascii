import 'package:image/image.dart' as img;

import '../get_string_buffer.dart';
import 'abgr_to_argb.dart';
import 'write_text_buffer.dart';

StringBuffer getTextBufferFromImage(GetTextBufferFromImageParams params) {
  final textBuffer = StringBuffer();
  for (var y = 0; y < params.image.height; y++) {
    for (var x = 0; x < params.image.width; x++) {
      final pixel = params.image.getPixelSafe(x, y);
      final argbColor = abgrToArgb(pixel);
      writeTextBuffer(
        argbColor: argbColor,
        textBuffer: textBuffer,
        listCharacters: params.params.settings.listCharacters,
        listColorValues: params.params.settings.listColorValues,
        repeatedCharacters: params.params.settings.repeatedCharacters,
        isColorReversed: params.isColorReversed,
      );
    }
    textBuffer.writeln();
  }
  return textBuffer;
}

class GetTextBufferFromImageParams {
  GetTextBufferFromImageParams({
    required this.image,
    required this.params,
    required this.isColorReversed,
  });

  final img.Image image;
  final GetStringBufferParams params;
  final bool isColorReversed;
}
