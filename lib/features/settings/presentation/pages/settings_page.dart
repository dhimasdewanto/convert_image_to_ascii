import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../bloc_listeners/settings_listeners.dart';
import '../blocs/settings/settings_bloc.dart';
import '../dialogs/image_width_dialog.dart';
import 'character_settings_page.dart';
import 'color_settings_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        onSuccessUpdatedSettings,
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: ListView(
          children: [
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
            BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Offstage(),
                  show: (settingsModel) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                              child: ImageWidthDialog(
                                initialValue: settingsModel.imageWidth,
                              ),
                            );
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text("Repeat Character"),
                          subtitle:
                              Text("${settingsModel.repeatedCharacters}x"),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text("Is Color Reversed"),
                          subtitle: Text("${settingsModel.isColorReversed}"),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text("Letter Spacing"),
                          subtitle: Text("${settingsModel.letterSpacing}"),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text("Font Size"),
                          subtitle: Text("${settingsModel.fontSize}"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
