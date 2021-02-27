import 'package:image/image.dart' as img;

class ImageResultModel {
  ImageResultModel({
    required this.imageStringBuffer,
    required this.convertedImage,
  });

  final img.Image convertedImage;
  final StringBuffer imageStringBuffer;

  @override
  int get hashCode => imageStringBuffer.hashCode ^ convertedImage.hashCode;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ImageResultModel &&
        o.imageStringBuffer == imageStringBuffer &&
        o.convertedImage == convertedImage;
  }

  @override
  String toString() =>
      'ImageResultModel(imageStringBuffer: $imageStringBuffer, convertedImage: $convertedImage)';

  ImageResultModel copyWith({
    StringBuffer? imageStringBuffer,
    img.Image? convertedImage,
  }) {
    return ImageResultModel(
      imageStringBuffer: imageStringBuffer ?? this.imageStringBuffer,
      convertedImage: convertedImage ?? this.convertedImage,
    );
  }
}
