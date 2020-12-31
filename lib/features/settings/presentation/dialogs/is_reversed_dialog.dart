import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/default_values.dart';
import '../../../../core/navigators.dart';
import '../../domain/use_cases/update_settings.dart';
import '../blocs/settings/settings_bloc.dart';

class IsReversedDialog extends StatelessWidget {
  const IsReversedDialog({Key key}) : super(key: key);

  void _updateSettings({
    @required BuildContext context,
    @required bool isColorReversed,
  }) {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      SettingsEvent.updateSettings(
        newSettings: UpdateSettingsParams(
          isColorReversed: isColorReversed,
        ),
      ),
    );
    pop(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("Is Color Reversed"),
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  _updateSettings(
                    context: context,
                    isColorReversed: defaultReverseColor,
                  );
                },
                child: const Text("Default"),
              ),
              OutlinedButton(
                onPressed: () {
                  _updateSettings(
                    context: context,
                    isColorReversed: false,
                  );
                },
                child: const Text("False"),
              ),
              OutlinedButton(
                onPressed: () {
                  _updateSettings(
                    context: context,
                    isColorReversed: true,
                  );
                },
                child: const Text("True"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
