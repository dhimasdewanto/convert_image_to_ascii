import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image/image.dart' as img;

class TestPage extends StatelessWidget {
  const TestPage({Key key}) : super(key: key);

  // static const _imagePath = 'assets/keanu.jpg';
  static const _imagePath = 'assets/bob_ross.jpg';
  // static const _imagePath = 'assets/lincoln.jpeg';
  // static const _imagePath = 'assets/rhoma.jpg';
  // static const _imagePath = 'assets/dhimas2.jpg';
  // static const _imagePath = 'assets/sendiri.png';
  // static const _imagePath = 'assets/hitler.jpg';
  // static const _imagePath = 'assets/kennedy.jpg';
  // static const _imagePath = 'assets/example_image.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // FutureBuilder<Uint8List>(
          //   future: _getImageBytesResize(),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData == false) {
          //       return const Offstage();
          //     }
          //     final bytes = snapshot.data;
          //     return Image.memory(
          //       bytes,
          //       width: double.infinity,
          //       fit: BoxFit.contain,
          //     );
          //   },
          // ),
          FutureBuilder<Widget>(
            future: _getImageAscii(),
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const Offstage();
              }
              final widget = snapshot.data;
              return widget;
            },
          ),
          FutureBuilder<Widget>(
            future: _getImageAscii(
              version: 2,
            ),
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const Offstage();
              }
              final widget = snapshot.data;
              return widget;
            },
          ),
        ],
      ),
    );
  }

  Future<Uint8List> _getImageBytes() async {
    final imageBytes = await rootBundle.load(_imagePath);
    return imageBytes.buffer.asUint8List();
  }

  Future<img.Image> _getImage() async {
    final bytes = await _getImageBytes();
    return img.decodeImage(bytes);
  }

  Future<Uint8List> _getImageBytesResize({int resizeTo = 50}) async {
    final image = await _getImage();
    final newImage = img.copyResize(image, width: resizeTo);
    final newImage2 = img.encodePng(newImage);
    return newImage2;
  }

  Future<Widget> _getImageAscii({
    double width = double.infinity,
    bool convertToGrayscale = false,
    bool encodeJpg = true,
    int version = 1,
  }) async {
    final bytes = await _getImageBytesResize();

    var image = img.decodeImage(bytes);
    if (convertToGrayscale) {
      image = img.grayscale(img.decodeImage(bytes));
    }
    if (encodeJpg) {
      final data = img.encodeJpg(image);
      image = img.decodeImage(data);
    }

    final textBuffer = StringBuffer();
    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final pixel = image.getPixelSafe(x, y);
        final argbColor = abgrToArgb(pixel);
        if (version == 2) {
          _writeTextBufferV2(
            argbColor,
            textBuffer,
            x: x,
            y: y,
          );
        } else {
          _writeTextBufferV1(
            argbColor,
            textBuffer,
            x: x,
            y: y,
          );
        }
      }
      textBuffer.writeln("");
    }
    await Clipboard.setData(ClipboardData(text: textBuffer.toString()));
    return Container(
      width: width,
      child: Text(
        textBuffer.toString(),
        style: GoogleFonts.robotoMono(
          fontSize: 6,
        ),
      ),
    );
  }

  void _writeTextBufferV1(
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

  void _writeTextBufferV2(
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
        print("($x, $y): $convertedColor = ${Color(convertedColor)}");
      }
      textBuffer.write("  ");
    }
  }
}

int abgrToArgb(int argbColor) {
  final r = (argbColor >> 16) & 0xFF;
  final b = argbColor & 0xFF;
  return (argbColor & 0xFF00FF00) | (b << 16) | r;
}
