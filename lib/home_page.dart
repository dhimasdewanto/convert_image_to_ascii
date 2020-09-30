import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:image/image.dart' as img;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String imagePath = 'assets/example_image.png';
  GlobalKey imageKey = GlobalKey();
  GlobalKey paintKey = GlobalKey();

  // CHANGE THIS FLAG TO TEST BASIC IMAGE, AND SNAPSHOT.
  bool useSnapshot = true;

  // based on useSnapshot=true ? paintKey : imageKey ;
  // this key is used in this example to keep the code shorter.
  GlobalKey currentKey;

  final _stateController = StreamController<Color>();
  img.Image photo;

  @override
  void initState() {
    currentKey = useSnapshot ? paintKey : imageKey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final title = useSnapshot ? "snapshot" : "basic";
    return Scaffold(
      appBar: AppBar(title: Text("Color picker $title")),
      body: StreamBuilder(
          initialData: Colors.green[500],
          stream: _stateController.stream,
          builder: (buildContext, snapshot) {
            final selectedColor = snapshot.data ?? Colors.green;
            return Stack(
              children: <Widget>[
                RepaintBoundary(
                  key: paintKey,
                  child: GestureDetector(
                    onPanDown: (details) {
                      searchPixel(details.globalPosition);
                    },
                    onPanUpdate: (details) {
                      searchPixel(details.globalPosition);
                    },
                    child: Center(
                      child: Image.asset(
                        imagePath,
                        key: imageKey,
                        //color: Colors.red,
                        //colorBlendMode: BlendMode.hue,
                        //alignment: Alignment.bottomRight,
                        fit: BoxFit.none,
                        //scale: .8,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(70),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectedColor,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 114,
                  top: 95,
                  child: Text(
                    '$selectedColor',
                    style: const TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }

  Future<void> searchPixel(Offset globalPosition) async {
    if (photo == null) {
      await (useSnapshot ? loadSnapshotBytes() : loadImageBundleBytes());
    }
    _calculatePixel(globalPosition);
  }

  void _calculatePixel(Offset globalPosition) {
    final RenderBox box = currentKey.currentContext.findRenderObject();
    final localPosition = box.globalToLocal(globalPosition);

    var px = localPosition.dx;
    var py = localPosition.dy;

    if (!useSnapshot) {
      final widgetScale = box.size.width / photo.width;
      print(py);
      px = px / widgetScale;
      py = py / widgetScale;
    }

    final pixel32 = photo.getPixelSafe(px.toInt(), py.toInt());
    final hex = abgrToArgb(pixel32);

    _stateController.add(Color(hex));
  }

  Future<void> loadImageBundleBytes() async {
    final imageBytes = await rootBundle.load(imagePath);
    setImageBytes(imageBytes);
  }

  Future<void> loadSnapshotBytes() async {
    final RenderRepaintBoundary boxPaint =
        paintKey.currentContext.findRenderObject();
    final capture = await boxPaint.toImage();
    final imageBytes = await capture.toByteData(
      format: ui.ImageByteFormat.png,
    );
    setImageBytes(imageBytes);
    capture.dispose();
  }

  void setImageBytes(ByteData imageBytes) {
    final values = imageBytes.buffer.asUint8List();
    photo = null;
    photo = img.decodeImage(values);

    final newImage = img.copyResize(photo, width: 64);
    for (var x = 0; x < newImage.height; x++) {
      var test = "";
      for (var y = 0; y < newImage.width; y++) {
        final pixel = newImage.getPixelSafe(x, y);
        final color = abgrToArgb(pixel);

        if (color == 0) {
          test += " ";
        } else {
          test += "8";
        }
      }
      print(test);
    }
  }
}

// image lib uses uses KML color format, convert #AABBGGRR to regular #AARRGGBB
int abgrToArgb(int argbColor) {
  final r = (argbColor >> 16) & 0xFF;
  final b = argbColor & 0xFF;
  return (argbColor & 0xFF00FF00) | (b << 16) | r;
}
