import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/default_values.dart';
import '../../../../core/limit_values.dart';
import '../../../../core/navigators.dart';
import '../../domain/use_cases/update_settings.dart';
import '../blocs/settings/settings_bloc.dart';

class ImageRepeatCharactersDialog extends StatefulWidget {
  const ImageRepeatCharactersDialog({
    Key? key,
    required this.initialValue,
  }) : super(key: key);

  final int? initialValue;

  @override
  _ImageRepeatCharactersDialogState createState() =>
      _ImageRepeatCharactersDialogState();
}

class _ImageRepeatCharactersDialogState
    extends State<ImageRepeatCharactersDialog> {
  final _fieldController = TextEditingController();

  bool get _isFormValid {
    final value = int.tryParse(_fieldController.text);
    if (value == null) {
      return false;
    }
    return value >= minRepeatCharacters && value <= maxRepeatCharacters;
  }

  int get _value {
    return int.parse(_fieldController.text);
  }

  set _value(int? value) {
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
    _updateSettings(defaultRepeatCharacter);
  }

  void _updateSettings(int repeatedCharacters) {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          repeatedCharacters: repeatedCharacters,
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
          "Min value is $minRepeatCharacters and max value is $maxRepeatCharacters",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6;

    return SimpleDialog(
      title: const Text("Repeat Characters Count"),
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
          max: maxRepeatCharacters.toDouble(),
          min: minRepeatCharacters.toDouble(),
          divisions: (maxRepeatCharacters / minRepeatCharacters).floor() - 1,
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
