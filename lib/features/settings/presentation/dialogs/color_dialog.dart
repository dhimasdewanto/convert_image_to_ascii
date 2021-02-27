import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/default_values.dart';
import '../../../../core/navigators.dart';
import '../../domain/use_cases/update_settings.dart';
import '../blocs/settings/settings_bloc.dart';
import '../widgets/color_picker.dart';

class ColorDialog extends StatelessWidget {
  const ColorDialog({
    Key? key,
    required this.indexValue,
    required this.listColorValues,
  }) : super(key: key);

  final int indexValue;
  final List<int> listColorValues;

  void _onConfirm({
    required BuildContext context,
    required Color color,
  }) {
    final newColorValue = color.value;
    _updateSettings(
      context: context,
      listColorValues: _getListColorValues(newColorValue),
    );
  }

  void _onDefault({
    required BuildContext context,
  }) {
    final defaultColorValue = defaultListColors[indexValue];
    _updateSettings(
      context: context,
      listColorValues: _getListColorValues(defaultColorValue),
    );
  }

  void _updateSettings({
    required BuildContext context,
    required List<int> listColorValues,
  }) {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          listColorValues: listColorValues,
        ),
      ),
    );
    pop(context: context);
  }

  List<int> _getListColorValues(int newColorValue) {
    final newList = List<int>.from(listColorValues);
    newList[indexValue] = newColorValue;
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(tr('change_color')),
      children: [
        ColorPicker(
          initialValue: listColorValues[indexValue],
          onDefault: () => _onDefault(
            context: context,
          ),
          onPicked: (color) => _onConfirm(
            context: context,
            color: color,
          ),
        ),
      ],
    );
  }
}
