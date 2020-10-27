import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/settings/settings_bloc.dart';
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
      body: ListView(
        children: [
          ListTile(
            title: const Text("Characters"),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (_) => const CharacterSettingsPage(),
              );
              Navigator.push(context, route);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("Colors"),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (_) => const ColorSettingsPage(),
              );
              Navigator.push(context, route);
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
                        title: const Text("Image Width"),
                        subtitle: Text("${settingsModel.imageWidth}"),
                        onTap: () {
                          showDialog(
                            context: context,
                            child: const ImageWidthDialog(),
                          );
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text("Repeat Character"),
                        subtitle: Text("${settingsModel.repeatedCharacters}x"),
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
    );
  }
}
