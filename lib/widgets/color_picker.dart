import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart' as picker;

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key key}) : super(key: key);

  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  var _valueColor = 0;
  var _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              child: Dialog(
                child: SingleChildScrollView(
                  child: picker.ColorPicker(
                    pickerColor: _color,
                    onColorChanged: (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                    pickerAreaHeightPercent: 0.8,
                    enableAlpha: false,
                  ),
                ),
              ),
            );
          },
          child: const Text("Open Color"),
        ),
        Container(
          height: 20,
          width: 20,
          color: Color.fromARGB(
            255,
            _valueColor,
            _valueColor,
            _valueColor,
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 22,
              ),
              child: Container(
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
            Theme(
              data: Theme.of(context).copyWith(
                sliderTheme: SliderTheme.of(context).copyWith(
                  thumbColor: Color.fromARGB(
                    255,
                    _valueColor,
                    _valueColor,
                    _valueColor,
                  ),
                  activeTrackColor: Colors.transparent,
                  inactiveTrackColor: Colors.transparent,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 20,
                  ),
                ),
              ),
              child: Slider(
                value: _valueColor.toDouble(),
                max: 255,
                onChanged: (value) {
                  setState(() {
                    _valueColor = value.toInt();
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
