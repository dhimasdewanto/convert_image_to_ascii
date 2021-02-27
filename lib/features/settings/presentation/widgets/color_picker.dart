import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({
    Key? key,
    required this.initialValue,
    required this.onPicked,
    required this.onDefault,
  }) : super(key: key);

  final int initialValue;
  final void Function(Color color) onPicked;
  final void Function() onDefault;

  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  var _valueColor = 0;

  @override
  void initState() {
    super.initState();
    final initialColor = Color(widget.initialValue);
    _valueColor = initialColor.red;
  }

  Color get _color => Color.fromARGB(
        255,
        _valueColor,
        _valueColor,
        _valueColor,
      );

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1;

    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: _color,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              _color.toHex(),
              style: textStyle,
            ),
          ],
        ),
        const SizedBox(height: 20),
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
                  thumbColor: _color,
                  activeTrackColor: Colors.transparent,
                  inactiveTrackColor: Colors.transparent,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 15,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: widget.onDefault,
              child: const Text("Default"),
            ),
            OutlinedButton(
              onPressed: () {
                widget.onPicked(_color);
              },
              child: const Text("Ok"),
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
