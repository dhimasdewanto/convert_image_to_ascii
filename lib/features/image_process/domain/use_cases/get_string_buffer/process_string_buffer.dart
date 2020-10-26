import '../get_string_buffer.dart';
import 'abgr_to_argb.dart';
import 'get_image.dart';
import 'write_text_buffer.dart';

Future<StringBuffer> processStringBuffer(GetStringBufferParams params) async {
  final image = await getImage(params);

  final textBuffer = StringBuffer();
  for (var y = 0; y < image.height; y++) {
    for (var x = 0; x < image.width; x++) {
      final pixel = image.getPixelSafe(x, y);
      final argbColor = abgrToArgb(pixel);
      writeTextBuffer(
        argbColor: argbColor,
        textBuffer: textBuffer,
        listCharacters: params.listCharacters,
        listColorValues: params.listColorValues,
        repeatedCharacters: params.repeatedCharacters,
        isColorReversed: params.isColorReversed,
      );
    }
    textBuffer.writeln("");
  }

  return textBuffer;
}