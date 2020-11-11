import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/limit_values.dart';
import '../../../../core/navigators.dart';
import '../blocs/settings/settings_bloc.dart';

class ImageRepeatCharactersDialog extends StatefulWidget {
  const ImageRepeatCharactersDialog({
    Key key,
    @required this.initialValue,
  }) : super(key: key);

  final int initialValue;

  @override
  _ImageRepeatCharactersDialogState createState() =>
      _ImageRepeatCharactersDialogState();
}

class _ImageRepeatCharactersDialogState
    extends State<ImageRepeatCharactersDialog> {
  var _value = 0;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _onConfirm() {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        repeatCharacters: _value,
      ),
    );
    pop(context: context);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SimpleDialog(
      title: const Text("Image Width"),
      children: [
        Center(
          child: Text(
            "${_value}x",
            style: textTheme.headline6,
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
              onPressed: () {},
              child: const Text("Default"),
            ),
            ElevatedButton(
              onPressed: _onConfirm,
              child: const Text("OK"),
            ),
          ],
        ),
      ],
    );
  }
}
