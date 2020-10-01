/// This is just for notes.
/// Unused in this project.

void writeTextBufferV1(
  int argbColor,
  StringBuffer textBuffer, {
  int x,
  int y,
}) {
  // 2 STEPS
  if (argbColor >= 4292000000 && argbColor <= 4294000000) {
    textBuffer.write(".");
  } else if (argbColor >= 4290000000 && argbColor <= 4292000000) {
    textBuffer.write("'");
  } else if (argbColor >= 4288000000 && argbColor <= 4290000000) {
    textBuffer.write(",");
  }
  // 1 STEP
  else if (argbColor >= 4286000000 && argbColor <= 4288000000) {
    textBuffer.write("*");
  } else if (argbColor >= 4285000000 && argbColor <= 4286000000) {
    textBuffer.write(":");
  } else if (argbColor >= 4284000000 && argbColor <= 4285000000) {
    textBuffer.write("/");
  } else if (argbColor >= 4283000000 && argbColor <= 4284000000) {
    textBuffer.write("(");
  } else if (argbColor >= 4282000000 && argbColor <= 4283000000) {
    textBuffer.write("%");
  } else if (argbColor >= 4281000000 && argbColor <= 4282000000) {
    textBuffer.write("&");
  } else if (argbColor >= 4280000000 && argbColor <= 4281000000) {
    textBuffer.write("#");
  }
  // DARK / BLACK
  else if (argbColor >= 4270000000 && argbColor <= 4280000000) {
    textBuffer.write("@");
  } else {
    if (x != null && y != null) {
      // print("($x, $y): $argbColor = ${Color(argbColor)}");
    }
    textBuffer.write(" ");
  }
}

void writeTextBufferV2(
  int argbColor,
  StringBuffer textBuffer, {
  int x,
  int y,
}) {
  final convertedColor = argbColor;

  // BLACK = 4278190080
  if (convertedColor >= 4293000000 && convertedColor <= 4294000000) {
    textBuffer.write("  ");
  } else if (convertedColor >= 4292000000 && convertedColor <= 4293000000) {
    textBuffer.write("..");
  } else if (convertedColor >= 4291000000 && convertedColor <= 4292000000) {
    textBuffer.write(",,");
  } else if (convertedColor >= 4290000000 && convertedColor <= 4291000000) {
    textBuffer.write("''");
  } else if (convertedColor >= 4289000000 && convertedColor <= 4290000000) {
    textBuffer.write('""');
  } else if (convertedColor >= 4288000000 && convertedColor <= 4289000000) {
    textBuffer.write(";;");
  } else if (convertedColor >= 4287000000 && convertedColor <= 4288000000) {
    textBuffer.write("**");
  } else if (convertedColor >= 4286000000 && convertedColor <= 4287000000) {
    textBuffer.write("//");
  } else if (convertedColor >= 4285000000 && convertedColor <= 4286000000) {
    textBuffer.write("((");
  } else if (convertedColor >= 4284000000 && convertedColor <= 4285000000) {
    textBuffer.write("[[");
  } else if (convertedColor >= 4283000000 && convertedColor <= 4284000000) {
    textBuffer.write("{{");
  } else if (convertedColor >= 4282000000 && convertedColor <= 4283000000) {
    textBuffer.write("%%");
  } else if (convertedColor >= 4281000000 && convertedColor <= 4282000000) {
    textBuffer.write("&&");
  } else if (convertedColor >= 4280000000 && convertedColor <= 4281000000) {
    textBuffer.write("##");
  } else if (convertedColor >= 4270000000 && convertedColor <= 4280000000) {
    textBuffer.write("@@");
  } else {
    if (x != null && y != null && convertedColor > 0) {
      // print("($x, $y): $convertedColor = ${Color(convertedColor)}");
    }
    textBuffer.write("  ");
  }
}
