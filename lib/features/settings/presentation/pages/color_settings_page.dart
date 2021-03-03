import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/settings/settings_bloc.dart';
import '../dialogs/color_dialog.dart';
import '../widgets/settings_title_button.dart';

class ColorSettingsPage extends StatelessWidget {
  const ColorSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    // For title widget.
    const indexAdder = 1;

    return Scaffold(
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            show: (settingsModel) {
              final listColorValues = settingsModel.listColorValues;
              return ListView.separated(
                itemCount: listColorValues.length + indexAdder,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: SettingsTitleButton(
                        textTitle: tr('change_color'),
                      ),
                    );
                  }

                  final colorValue = listColorValues[index - indexAdder];
                  return ListTile(
                    leading: Text("$index."),
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
