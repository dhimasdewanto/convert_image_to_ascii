import 'package:meta/meta.dart';

/// Write character from available colors.
void writeTextBuffer({
  @required int argbColor,
  @required StringBuffer textBuffer,
  @required List<int> listColorValues,
  @required List<String> listCharacters,
  @required int repeatedCharacters,
  @required bool isColorReversed,
}) {
  final convertedColor = argbColor;
  final chars = _getListChars(
    listCharacters: listCharacters,
    isColorReversed: isColorReversed,
  );

  if (convertedColor >= listColorValues.first) {
    _writeOverValueTextBuffer(
      chars: chars,
      textBuffer: textBuffer,
      repeatedCharacters: repeatedCharacters,
    );
  } else if (convertedColor <= listColorValues.last) {
    _writeUnderValueTextBuffer(
      chars: chars,
      textBuffer: textBuffer,
      repeatedCharacters: repeatedCharacters,
    );
  } else {
    _writeInValueTextBuffer(
      convertedColor: convertedColor,
      chars: chars,
      textBuffer: textBuffer,
      listColorValues: listColorValues,
      repeatedCharacters: repeatedCharacters,
    );
  }
}

void _writeInValueTextBuffer({
  @required int convertedColor,
  @required StringBuffer textBuffer,
  @required List<String> chars,
  @required List<int> listColorValues,
  @required int repeatedCharacters,
}) {
  for (var index = 1; index < listColorValues.length; index++) {
    final thisColor = listColorValues[index];
    final prevColor = listColorValues[index - 1];
    if (convertedColor > thisColor && convertedColor <= prevColor) {
      for (var i = 0; i < repeatedCharacters; i++) {
        textBuffer.write(chars[index]);
      }
    }
  }
}

void _writeOverValueTextBuffer({
  @required StringBuffer textBuffer,
  @required List<String> chars,
  @required int repeatedCharacters,
}) {
  for (var i = 0; i < repeatedCharacters; i++) {
    textBuffer.write(chars.first);
  }
}

void _writeUnderValueTextBuffer({
  @required StringBuffer textBuffer,
  @required List<String> chars,
  @required int repeatedCharacters,
}) {
  for (var i = 0; i < repeatedCharacters; i++) {
    textBuffer.write(chars.last);
  }
}

List<String> _getListChars({
  @required List<String> listCharacters,
  @required bool isColorReversed,
}) {
  if (isColorReversed) {
    return listCharacters.reversed.toList();
  }
  return listCharacters;
}
