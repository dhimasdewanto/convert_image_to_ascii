import 'dart:convert';

import 'package:flutter/foundation.dart';

class SettingsModel {
  SettingsModel({
    @required this.fontSize,
    @required this.imageWidth,
    @required this.isColorReversed,
    @required this.convertToGrayscale,
    @required this.letterSpacing,
    @required this.listCharacters,
    @required this.listColorValues,
    @required this.repeatedCharacters,
  });

  factory SettingsModel.fromJson(String source) =>
      SettingsModel.fromMap(json.decode(source));

  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SettingsModel(
      fontSize: map['fontSize'],
      imageWidth: map['imageWidth'],
      isColorReversed: map['isColorReversed'],
      convertToGrayscale: map['convertToGrayscale'],
      letterSpacing: map['letterSpacing'],
      listCharacters: List<String>.from(map['listCharacters']),
      listColorValues: List<int>.from(map['listColorValues']),
      repeatedCharacters: map['repeatedCharacters'],
    );
  }

  final int fontSize;
  final int imageWidth;
  final bool isColorReversed;
  final bool convertToGrayscale;
  final double letterSpacing;
  final List<String> listCharacters;
  final List<int> listColorValues;
  final int repeatedCharacters;

  @override
  int get hashCode {
    return fontSize.hashCode ^
        imageWidth.hashCode ^
        isColorReversed.hashCode ^
        convertToGrayscale.hashCode ^
        letterSpacing.hashCode ^
        listCharacters.hashCode ^
        listColorValues.hashCode ^
        repeatedCharacters.hashCode;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SettingsModel &&
        o.fontSize == fontSize &&
        o.imageWidth == imageWidth &&
        o.isColorReversed == isColorReversed &&
        o.convertToGrayscale == convertToGrayscale &&
        o.letterSpacing == letterSpacing &&
        listEquals(o.listCharacters, listCharacters) &&
        listEquals(o.listColorValues, listColorValues) &&
        o.repeatedCharacters == repeatedCharacters;
  }

  @override
  String toString() {
    return 'SettingsModel(fontSize: $fontSize, imageWidth: $imageWidth, isColorReversed: $isColorReversed, convertToGrayscale: $convertToGrayscale, letterSpacing: $letterSpacing, listCharacters: $listCharacters, listColorValues: $listColorValues, repeatedCharacters: $repeatedCharacters)';
  }

  SettingsModel copyWith({
    int fontSize,
    int imageWidth,
    bool isColorReversed,
    bool convertToGrayscale,
    double letterSpacing,
    List<String> listCharacters,
    List<int> listColorValues,
    int repeatedCharacters,
  }) {
    return SettingsModel(
      fontSize: fontSize ?? this.fontSize,
      imageWidth: imageWidth ?? this.imageWidth,
      isColorReversed: isColorReversed ?? this.isColorReversed,
      convertToGrayscale: convertToGrayscale ?? this.convertToGrayscale,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      listCharacters: listCharacters ?? this.listCharacters,
      listColorValues: listColorValues ?? this.listColorValues,
      repeatedCharacters: repeatedCharacters ?? this.repeatedCharacters,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fontSize': fontSize,
      'imageWidth': imageWidth,
      'isColorReversed': isColorReversed,
      'convertToGrayscale': convertToGrayscale,
      'letterSpacing': letterSpacing,
      'listCharacters': listCharacters,
      'listColorValues': listColorValues,
      'repeatedCharacters': repeatedCharacters,
    };
  }

  String toJson() => json.encode(toMap());
}
