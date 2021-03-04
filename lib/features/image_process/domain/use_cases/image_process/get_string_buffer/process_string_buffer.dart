import 'package:image/image.dart' as img;

import '../../../models/image_result_model.dart';
import '../get_string_buffer.dart';
import 'get_image.dart';
import 'get_text_buffer_from_image.dart';

Future<ImageResultModel> processStringBuffer(
    GetStringBufferParams params) async {
  final image = (await getImage(params)) ?? img.Image(0, 0);

  final darkTextBuffer = getTextBufferFromImage(
    GetTextBufferFromImageParams(
      image: image,
      params: params,
      isColorReversed: true, // DARK SCREEN
    ),
  );
  final lightTextBuffer = getTextBufferFromImage(
    GetTextBufferFromImageParams(
      image: image,
      params: params,
      isColorReversed: false, // LIGHT SCREEN
    ),
  );

  return ImageResultModel(
    imageStringBufferDark: darkTextBuffer,
    imageStringBufferLight: lightTextBuffer,
    convertedImage: image,
  );
}
