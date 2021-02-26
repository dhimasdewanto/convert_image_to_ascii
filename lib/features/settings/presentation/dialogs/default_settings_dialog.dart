import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../../domain/use_cases/update_settings.dart';
import '../blocs/settings/settings_bloc.dart';

class DefaultSettingsDialog extends StatelessWidget {
  const DefaultSettingsDialog({Key? key}) : super(key: key);

  void _toDefaultSettings({
    required BuildContext context,
  }) {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          isToDefault: true,
        ),
      ),
    );
    pop(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("To Default Settings?"),
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  pop(context: context);
                },
                child: const Text("No"),
              ),
              OutlinedButton(
                onPressed: () {
                  _toDefaultSettings(
                    context: context,
                  );
                },
                child: const Text("Yes"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
