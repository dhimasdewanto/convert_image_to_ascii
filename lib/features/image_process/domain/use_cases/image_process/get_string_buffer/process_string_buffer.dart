import 'package:image/image.dart';

import '../../../models/image_result_model.dart';
import '../get_string_buffer.dart';
import 'abgr_to_argb.dart';
import 'get_image.dart';
import 'write_text_buffer.dart';

Future<ImageResultModel> processStringBuffer(
    GetStringBufferParams params) async {
  final image = (await getImage(params)) ?? Image(0, 0);

  final textBuffer = StringBuffer();
  for (var y = 0; y < image.height; y++) {
    for (var x = 0; x < image.width; x++) {
      final pixel = image.getPixelSafe(x, y);
      final argbColor = abgrToArgb(pixel);
      writeTextBuffer(
        argbColor: argbColor,
        textBuffer: textBuffer,
        listCharacters: params.settings.listCharacters,
        listColorValues: params.settings.listColorValues,
        repeatedCharacters: params.settings.repeatedCharacters,
        isColorReversed: params.settings.isColorReversed,
      );
    }
    textBuffer.writeln();
  }

  return ImageResultModel(
    imageStringBuffer: textBuffer,
    convertedImage: image,
  );
}
