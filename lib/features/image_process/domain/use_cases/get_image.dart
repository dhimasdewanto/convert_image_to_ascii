import 'dart:io';
import 'dart:typed_data';

import 'package:image/image.dart' as img;

import '../../../../core/settings.dart';
import '../models/image_process_model.dart';

/// Get image from File.
Future<img.Image> getImage(ImageProcessModel model) async {
  final bytes = await _getImageBytes(model.imageFile);
  final image = img.decodeImage(bytes);
  final resizedImage = img.copyResize(
    image,
    width: imageWidth,
  );
  final jgpImage = img.decodeImage(
    img.encodeJpg(resizedImage),
  );

  if (model.convertToGrayscale) {
    return img.grayscale(jgpImage);
  }
  return jgpImage;
}

Future<Uint8List> _getImageBytes(File fileImage) async {
  // final imageBytes = await rootBundle.load(_imagePath);
  // return imageBytes.buffer.asUint8List();
  return fileImage.readAsBytes();
}