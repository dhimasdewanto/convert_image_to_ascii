import 'package:meta/meta.dart';

import '../core/settings.dart';

/// Write character from available colors.
void writeTextBuffer({
  @required int argbColor,
  @required StringBuffer textBuffer,
  @required List<int> listColorValues,
  @required List<String> listCharacters,
}) {
  final convertedColor = argbColor;
  final chars = _getListChars(
    listCharacters: listCharacters,
  );

  if (convertedColor >= listColorValues.first) {
    _writeOverValueTextBuffer(
      chars: chars,
      textBuffer: textBuffer,
    );
  } else if (convertedColor <= listColorValues.last) {
    _writeUnderValueTextBuffer(
      chars: chars,
      textBuffer: textBuffer,
    );
  } else {
    _writeInValueTextBuffer(
      convertedColor: convertedColor,
      chars: chars,
      textBuffer: textBuffer,
      listColorValues: listColorValues,
    );
  }
}

void _writeInValueTextBuffer({
  @required int convertedColor,
  @required StringBuffer textBuffer,
  @required List<String> chars,
  @required List<int> listColorValues,
}) {
  for (var index = 1; index < listColorValues.length; index++) {
    final thisColor = listColorValues[index];
    final prevColor = listColorValues[index - 1];
    if (convertedColor > thisColor && convertedColor <= prevColor) {
      for (var i = 0; i < repeatCharacter; i++) {
        textBuffer.write(chars[index]);
      }
    }
  }
}

void _writeOverValueTextBuffer({
  @required StringBuffer textBuffer,
  @required List<String> chars,
}) {
  for (var i = 0; i < repeatCharacter; i++) {
    textBuffer.write(chars.first);
  }
}

void _writeUnderValueTextBuffer({
  @required StringBuffer textBuffer,
  @required List<String> chars,
}) {
  for (var i = 0; i < repeatCharacter; i++) {
    textBuffer.write(chars.last);
  }
}

List<String> _getListChars({
  @required List<String> listCharacters,
}) {
  if (reverseColor) {
    return listCharacters.reversed.toList();
  }
  return listCharacters;
}
