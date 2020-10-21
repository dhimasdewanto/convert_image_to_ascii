import 'package:meta/meta.dart';

import '../core/settings.dart';

/// Write character from available colors.
void writeTextBuffer({
  @required int argbColor,
  @required StringBuffer textBuffer,
}) {
  final convertedColor = argbColor;
  final chars = _getListChars();

  if (convertedColor >= levelColors2.first) {
    _writeOverValueTextBuffer(
      chars: chars,
      textBuffer: textBuffer,
    );
  } else if (convertedColor <= levelColors2.last) {
    _writeUnderValueTextBuffer(
      chars: chars,
      textBuffer: textBuffer,
    );
  } else {
    _writeInValueTextBuffer(
      convertedColor: convertedColor,
      chars: chars,
      textBuffer: textBuffer,
    );
  }
}

void _writeInValueTextBuffer({
  @required int convertedColor,
  @required StringBuffer textBuffer,
  @required List<String> chars,
}) {
  for (var index = 1; index < levelColors2.length; index++) {
    final thisColor = levelColors2[index];
    final prevColor = levelColors2[index - 1];
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

List<String> _getListChars() {
  if (reverseColor) {
    return levelChars.reversed.toList();
  }
  return levelChars;
}
