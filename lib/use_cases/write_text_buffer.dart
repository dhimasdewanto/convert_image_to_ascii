import 'package:meta/meta.dart';

import '../core/settings.dart';

/// Write character from available colors.
void writeTextBuffer({
  @required int argbColor,
  @required StringBuffer textBuffer,
}) {
  final convertedColor = argbColor;
  final chars = _getListChars();

  if (convertedColor >= levelColors.first) {
    _writeOverValueTextBuffer(
      chars: chars,
      textBuffer: textBuffer,
    );
  } else if (convertedColor <= levelColors.last) {
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
  for (var index = 1; index < levelColors.length; index++) {
    final thisColor = levelColors[index];
    final prevColor = levelColors[index - 1];
    if (convertedColor >= thisColor && convertedColor <= prevColor) {
      for (var i = 0; i < repeat; i++) {
        textBuffer.write(chars[index]);
      }
    }
  }
}

void _writeOverValueTextBuffer({
  @required StringBuffer textBuffer,
  @required List<String> chars,
}) {
  for (var i = 0; i < repeat; i++) {
    textBuffer.write(chars.first);
  }
}

void _writeUnderValueTextBuffer({
  @required StringBuffer textBuffer,
  @required List<String> chars,
}) {
  for (var i = 0; i < repeat; i++) {
    textBuffer.write(chars.last);
  }
}

List<String> _getListChars() {
  if (reversed) {
    return levelChars.reversed.toList();
  }
  return levelChars;
}
