import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/default_values.dart';
import '../../../../core/navigators.dart';
import '../../domain/use_cases/update_settings.dart';
import '../blocs/settings/settings_bloc.dart';

class CharacterDialog extends StatefulWidget {
  const CharacterDialog({
    Key? key,
    required this.indexCharacter,
    required this.listCharacters,
  }) : super(key: key);

  final int indexCharacter;
  final List<String> listCharacters;

  @override
  _CharacterDialogState createState() => _CharacterDialogState();
}

class _CharacterDialogState extends State<CharacterDialog> {
  final _formKey = GlobalKey<FormState>();
  final _fieldController = TextEditingController();

  String get _initialValue => widget.listCharacters[widget.indexCharacter];

  @override
  void initState() {
    super.initState();
    _fieldController.text = _initialValue;
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

    final newCharacter = _fieldController.text;
    _updateSettings(_getNewListCharacters(newCharacter));
  }

  void _onDefault() {
    final defaultCharacter = defaultListCharacters[widget.indexCharacter];
    _updateSettings(_getNewListCharacters(defaultCharacter));
  }

  void _updateSettings(List<String> listCharacters) {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          listCharacters: listCharacters,
        ),
      ),
    );
    pop(context: context);
  }

  List<String> _getNewListCharacters(String newCharacters) {
    final newListCharacters = List<String>.from(widget.listCharacters);
    newListCharacters[widget.indexCharacter] = newCharacters;
    return newListCharacters;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6;

    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: Text(tr('change_character')),
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
              validator: (value) {
                if (value!.length != 1) {
                  return tr('must_one');
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
