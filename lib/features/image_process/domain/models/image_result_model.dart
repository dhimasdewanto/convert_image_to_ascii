import 'package:image/image.dart' as img;

class ImageResultModel {
  ImageResultModel({
    required this.convertedImage,
    required this.imageStringBufferDark,
    required this.imageStringBufferLight,
  });

  final img.Image convertedImage;
  final StringBuffer imageStringBufferDark;
  final StringBuffer imageStringBufferLight;

  ImageResultModel copyWith({
    img.Image? convertedImage,
    StringBuffer? imageStringBufferDark,
    StringBuffer? imageStringBufferLight,
  }) {
    return ImageResultModel(
      convertedImage: convertedImage ?? this.convertedImage,
      imageStringBufferDark:
          imageStringBufferDark ?? this.imageStringBufferDark,
      imageStringBufferLight:
          imageStringBufferLight ?? this.imageStringBufferLight,
    );
  }

  @override
  String toString() =>
      'ImageResultModel(convertedImage: $convertedImage, imageStringBufferDark: $imageStringBufferDark, imageStringBufferLight: $imageStringBufferLight)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ImageResultModel &&
        o.convertedImage == convertedImage &&
        o.imageStringBufferDark == imageStringBufferDark &&
        o.imageStringBufferLight == imageStringBufferLight;
  }

  @override
  int get hashCode =>
      convertedImage.hashCode ^
      imageStringBufferDark.hashCode ^
      imageStringBufferLight.hashCode;
}
