
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

class SettingsModel {
  SettingsModel({
    @required this.listCharacters,
    @required this.listColorValues,
  });

  final List<String> listCharacters;
  final List<int> listColorValues;

  SettingsModel copyWith({
    List<String> listCharacters,
    List<int> listColorValues,
  }) {
    return SettingsModel(
      listCharacters: listCharacters ?? this.listCharacters,
      listColorValues: listColorValues ?? this.listColorValues,
    );
  }

  @override
  String toString() =>
      'SettingsModel(listCharacters: $listCharacters, listColorValues: $listColorValues)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SettingsModel &&
        listEquals(o.listCharacters, listCharacters) &&
        listEquals(o.listColorValues, listColorValues);
  }

  @override
  int get hashCode => listCharacters.hashCode ^ listColorValues.hashCode;
}
