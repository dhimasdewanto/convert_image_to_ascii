import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/settings/settings_bloc.dart';
import '../dialogs/color_dialog.dart';

class ColorSettingsPage extends StatelessWidget {
  const ColorSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Settings"),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            show: (settingsModel) {
              final listColorValues = settingsModel.listColorValues;
              return ListView.separated(
                itemCount: listColorValues.length,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  final colorValue = listColorValues[index];
                  return ListTile(
                    leading: Text("${index + 1}."),
                    title: Container(
                      height: textTheme.bodyText1!.fontSize,
                      decoration: BoxDecoration(
                        color: Color(colorValue),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => ColorDialog(
                          indexValue: index,
                          listColorValues: listColorValues,
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
