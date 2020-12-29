import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../blocs/settings/settings_bloc.dart';
import '../dialogs/image_repeat_characters_dialog.dart';
import '../dialogs/image_width_dialog.dart';
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
                    title: const Text("Characters Total"),
                    onTap: () {},
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
                    title: const Text("Convert to Grayscale"),
                    subtitle: Text("${settingsModel.convertToGrayscale}"),
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
                    subtitle: Text("${settingsModel.isColorReversed}"),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
