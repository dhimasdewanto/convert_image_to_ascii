import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../../core/default_values.dart';

class SettingsModel {
  SettingsModel({
    required this.imageWidth,
    required this.isColorReversed,
    required this.convertToGrayscale,
    required this.listCharacters,
    required this.listColorValues,
    required this.repeatedCharacters,
  });

  factory SettingsModel.fromJson(String source) =>
      SettingsModel.fromMap(json.decode(source));

  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    return SettingsModel(
      imageWidth: map['imageWidth'] ?? defaultImageWidth,
      isColorReversed: map['isColorReversed'] ?? defaultReverseColor,
      convertToGrayscale: map['convertToGrayscale'] ?? defaultToGrayscale,
      listCharacters: List<String>.from(map['listCharacters'] ?? defaultListCharacters),
      listColorValues: List<int>.from(map['listColorValues'] ?? defaultListColors),
      repeatedCharacters: map['repeatedCharacters'] ?? defaultRepeatCharacter,
    );
  }

  final int imageWidth;
  final bool isColorReversed;
  final bool convertToGrayscale;
  final List<String> listCharacters;
  final List<int> listColorValues;
  final int repeatedCharacters;

  @override
  int get hashCode {
    return imageWidth.hashCode ^
      isColorReversed.hashCode ^
      convertToGrayscale.hashCode ^
      listCharacters.hashCode ^
      listColorValues.hashCode ^
      repeatedCharacters.hashCode;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is SettingsModel &&
      o.imageWidth == imageWidth &&
      o.isColorReversed == isColorReversed &&
      o.convertToGrayscale == convertToGrayscale &&
      listEquals(o.listCharacters, listCharacters) &&
      listEquals(o.listColorValues, listColorValues) &&
      o.repeatedCharacters == repeatedCharacters;
  }

  @override
  String toString() {
    return 'SettingsModel(imageWidth: $imageWidth, isColorReversed: $isColorReversed, convertToGrayscale: $convertToGrayscale, listCharacters: $listCharacters, listColorValues: $listColorValues, repeatedCharacters: $repeatedCharacters)';
  }

  SettingsModel copyWith({
    int? imageWidth,
    bool? isColorReversed,
    bool? convertToGrayscale,
    List<String>? listCharacters,
    List<int>? listColorValues,
    int? repeatedCharacters,
  }) {
    return SettingsModel(
      imageWidth: imageWidth ?? this.imageWidth,
      isColorReversed: isColorReversed ?? this.isColorReversed,
      convertToGrayscale: convertToGrayscale ?? this.convertToGrayscale,
      listCharacters: listCharacters ?? this.listCharacters,
      listColorValues: listColorValues ?? this.listColorValues,
      repeatedCharacters: repeatedCharacters ?? this.repeatedCharacters,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageWidth': imageWidth,
      'isColorReversed': isColorReversed,
      'convertToGrayscale': convertToGrayscale,
      'listCharacters': listCharacters,
      'listColorValues': listColorValues,
      'repeatedCharacters': repeatedCharacters,
    };
  }

  String toJson() => json.encode(toMap());
}
