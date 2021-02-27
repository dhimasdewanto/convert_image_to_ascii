import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/default_values.dart';
import '../../../../core/navigators.dart';
import '../../domain/use_cases/update_settings.dart';
import '../blocs/settings/settings_bloc.dart';

class TotalCharactersDialog extends StatefulWidget {
  const TotalCharactersDialog({
    Key? key,
    required this.listCharacters,
  }) : super(key: key);

  final List<String> listCharacters;

  @override
  _TotalCharactersDialogState createState() => _TotalCharactersDialogState();
}

class _TotalCharactersDialogState extends State<TotalCharactersDialog> {
  final _formKey = GlobalKey<FormState>();
  final _fieldController = TextEditingController();

  int get _initialValue => widget.listCharacters.length;

  @override
  void initState() {
    super.initState();
    _fieldController.text = _initialValue.toString();
  }

  @override
  void dispose() {
    _fieldController.dispose();
    super.dispose();
  }

  void _onConfirm() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }

    final totalCharacters = int.tryParse(_fieldController.text);
    if (totalCharacters == null) {
      return;
    }

    _updateSettings(totalCharacters);
  }

  void _onDefault() {
    _updateSettings(defaultListCharacters.length);
  }

  void _updateSettings(int totalCharacters) {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          totalCharacters: totalCharacters,
        ),
      ),
    );
    pop(context: context);
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6;

    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: Text(tr('total_characters')),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 10,
            ),
            child: TextFormField(
              controller: _fieldController,
              textAlign: TextAlign.center,
              style: textStyle,
              keyboardType: TextInputType.number,
              validator: (value) {
                final number = int.tryParse(value!);
                if (number == null) {
                  return tr('number');
                }
                if (number < 2) {
                  return tr("min_value", args: ['2']);
                }
                return null;
              },
              onChanged: (value) {
                _formKey.currentState!.validate();
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: _onDefault,
                child: Text(tr('default')),
              ),
              OutlinedButton(
                onPressed: _onConfirm,
                child: Text(tr('ok')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
