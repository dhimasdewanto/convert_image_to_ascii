import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../blocs/settings/settings_bloc.dart';
import '../dialogs/default_settings_dialog.dart';
import '../dialogs/image_repeat_characters_dialog.dart';
import '../dialogs/image_width_dialog.dart';
import '../dialogs/is_reversed_dialog.dart';
import '../dialogs/total_characters_dialog.dart';
import 'character_settings_page.dart';
import 'color_settings_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            show: (settingsModel) {
              return ListView(
                children: [
                  ListTile(
                    title: const Text("Total Characters"),
                    subtitle: Text("${settingsModel.listCharacters.length}"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => TotalCharactersDialog(
                          listCharacters: settingsModel.listCharacters,
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Characters"),
                    onTap: () {
                      push(
                        context: context,
                        page: const CharacterSettingsPage(),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Colors"),
                    onTap: () {
                      push(
                        context: context,
                        page: const ColorSettingsPage(),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Image Width"),
                    subtitle: Text("${settingsModel.imageWidth}"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => ImageWidthDialog(
                          initialValue: settingsModel.imageWidth,
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Repeat Characters Count"),
                    subtitle: Text("${settingsModel.repeatedCharacters}x"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => ImageRepeatCharactersDialog(
                          initialValue: settingsModel.repeatedCharacters,
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Is Color Reversed"),
                    subtitle:
                        Text("${settingsModel.isColorReversed}".capitalize()),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => const IsReversedDialog(),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Default Settings"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => const DefaultSettingsDialog(),
                      );
                    },
                  ),
                  const Divider(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
