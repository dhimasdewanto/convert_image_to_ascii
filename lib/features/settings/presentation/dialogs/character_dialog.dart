import 'package:flutter/material.dart';

class CharacterDialog extends StatefulWidget {
  const CharacterDialog({
    Key key,
    @required this.initialValue,
  }) : super(key: key);

  final String initialValue;

  @override
  _CharacterDialogState createState() => _CharacterDialogState();
}

class _CharacterDialogState extends State<CharacterDialog> {
  final _formKey = GlobalKey<FormState>();
  final _fieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fieldController.text = widget.initialValue;
  }

  @override
  void dispose() {
    _fieldController.dispose();
    super.dispose();
  }

  void _onConfirm() {}

  void _onDefault() {}

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6;

    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: const Text("Change Character"),
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
                if (value.length != 1) {
                  return "Must 1";
                }
                return null;
              },
              onChanged: (value) {
                _formKey.currentState.validate();
              },
            ),
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
      ),
    );
  }
}
