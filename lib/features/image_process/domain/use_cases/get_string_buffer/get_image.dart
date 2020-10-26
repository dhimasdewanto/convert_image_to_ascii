import 'dart:io';
import 'dart:typed_data';

import 'package:image/image.dart' as img;

import '../get_string_buffer.dart';

/// Get image from File.
Future<img.Image> getImage(GetStringBufferParams params) async {
  final bytes = await _getImageBytes(params.imageFile);
  final image = img.decodeImage(bytes);
  final resizedImage = img.copyResize(
    image,
    width: params.imageWidth,
  );
  final jgpImage = img.decodeImage(
    img.encodeJpg(resizedImage),
  );

  if (params.convertToGrayscale) {
    return img.grayscale(jgpImage);
  }
  return jgpImage;
}

Future<Uint8List> _getImageBytes(File fileImage) async {
  // final imageBytes = await rootBundle.load(_imagePath);
  // return imageBytes.buffer.asUint8List();
  return fileImage.readAsBytes();
}
