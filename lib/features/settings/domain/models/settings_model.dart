import 'dart:convert';

import 'package:flutter/foundation.dart';

class SettingsModel {
  SettingsModel({
    @required this.listCharacters,
    @required this.listColorValues,
    @required this.imageWidth,
    @required this.repeatedCharacters,
    @required this.isColorReversed,
    @required this.letterSpacing,
    @required this.fontSize,
  });

  factory SettingsModel.fromJson(String source) =>
      SettingsModel.fromMap(json.decode(source));

  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SettingsModel(
      listCharacters: List<String>.from(map['listCharacters']),
      listColorValues: List<int>.from(map['listColorValues']),
      imageWidth: map['imageWidth'],
      repeatedCharacters: map['repeatedCharacters'],
      isColorReversed: map['isColorReversed'],
      letterSpacing: map['letterSpacing'],
      fontSize: map['fontSize'],
    );
  }

  final int fontSize;
  final int imageWidth;
  final bool isColorReversed;
  final double letterSpacing;
  final List<String> listCharacters;
  final List<int> listColorValues;
  final int repeatedCharacters;

  @override
  int get hashCode {
    return listCharacters.hashCode ^
        listColorValues.hashCode ^
        imageWidth.hashCode ^
        repeatedCharacters.hashCode ^
        isColorReversed.hashCode ^
        letterSpacing.hashCode ^
        fontSize.hashCode;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SettingsModel &&
        listEquals(o.listCharacters, listCharacters) &&
        listEquals(o.listColorValues, listColorValues) &&
        o.imageWidth == imageWidth &&
        o.repeatedCharacters == repeatedCharacters &&
        o.isColorReversed == isColorReversed &&
        o.letterSpacing == letterSpacing &&
        o.fontSize == fontSize;
  }

  @override
  String toString() {
    return 'SettingsModel(listCharacters: $listCharacters, listColorValues: $listColorValues, imageWidth: $imageWidth, repeatedCharacters: $repeatedCharacters, isColorReversed: $isColorReversed, letterSpacing: $letterSpacing, fontSize: $fontSize)';
  }

  SettingsModel copyWith({
    List<String> listCharacters,
    List<int> listColorValues,
    int imageWidth,
    int repeatedCharacters,
    bool isColorReversed,
    double letterSpacing,
    int fontSize,
  }) {
    return SettingsModel(
      listCharacters: listCharacters ?? this.listCharacters,
      listColorValues: listColorValues ?? this.listColorValues,
      imageWidth: imageWidth ?? this.imageWidth,
      repeatedCharacters: repeatedCharacters ?? this.repeatedCharacters,
      isColorReversed: isColorReversed ?? this.isColorReversed,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      fontSize: fontSize ?? this.fontSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'listCharacters': listCharacters,
      'listColorValues': listColorValues,
      'imageWidth': imageWidth,
      'repeatedCharacters': repeatedCharacters,
      'isColorReversed': isColorReversed,
      'letterSpacing': letterSpacing,
      'fontSize': fontSize,
    };
  }

  String toJson() => json.encode(toMap());
}
