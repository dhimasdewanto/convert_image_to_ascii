import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  static const _minValue = 20;
  static const _maxValue = 200;

  bool get _isFormValid {
    final value = int.tryParse(_fieldController.text);
    if (value != null) {
      if (value < _minValue || value > _maxValue) {
        return false;
      }
      return true;
    }
    return false;
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
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          content: Text(
            "Min width is $_minValue character and max width $_maxValue character",
          ),
        ),
      );
      return;
    }

    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          imageWidth: _value,
        ),
      ),
    );
    pop(context: context);
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
              onPressed: () {},
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
