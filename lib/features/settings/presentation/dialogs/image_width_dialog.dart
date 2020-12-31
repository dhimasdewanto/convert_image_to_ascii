import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/default_values.dart';
import '../../../../core/limit_values.dart';
import '../../../../core/navigators.dart';
import '../../domain/use_cases/update_settings.dart';
import '../blocs/settings/settings_bloc.dart';

class ImageWidthDialog extends StatefulWidget {
  const ImageWidthDialog({
    Key key,
    @required this.initialValue,
  }) : super(key: key);

  final int initialValue;

  @override
  _ImageWidthDialogState createState() => _ImageWidthDialogState();
}

class _ImageWidthDialogState extends State<ImageWidthDialog> {
  final _fieldController = TextEditingController();

  bool get _isFormValid {
    final value = int.tryParse(_fieldController.text);
    if (value == null) {
      return false;
    }
    return value >= minImageWidth && value <= maxImageWidth;
  }

  int get _value {
    return int.parse(_fieldController.text);
  }

  set _value(int value) {
    _fieldController.text = value.toString();
  }

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _onConfirm() {
    if (_isFormValid == false) {
      _showErrorDialog();
      return;
    }

    _updateSettings(_value);
  }

  void _onDefault() {
    _updateSettings(defaultImageWidth);
  }

  void _updateSettings(int imageWidth) {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          imageWidth: imageWidth,
        ),
      ),
    );
    pop(context: context);
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (_) => const AlertDialog(
        content: Text(
          "Min width is $minImageWidth character and max width is $maxImageWidth character",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6;

    return SimpleDialog(
      title: const Text("Image Width"),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 10,
          ),
          child: TextField(
            controller: _fieldController,
            textAlign: TextAlign.center,
            style: textStyle,
            keyboardType: TextInputType.number,
          ),
        ),
        Slider(
          value: _value.toDouble(),
          max: maxImageWidth.toDouble(),
          min: minImageWidth.toDouble(),
          divisions: (maxImageWidth / minImageWidth).floor() - 1,
          onChanged: (value) {
            setState(() {
              _value = value.toInt();
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: _onDefault,
              child: const Text("Default"),
            ),
            OutlinedButton(
              onPressed: _onConfirm,
              child: const Text("Ok"),
            ),
          ],
        ),
      ],
    );
  }
}
