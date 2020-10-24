import 'package:flutter/material.dart';

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
          const ListTile(
            title: Text("Image Width"),
            subtitle: Text("200"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Repeat Character"),
            subtitle: Text("2x"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Is Color Reversed"),
            subtitle: Text("True"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Letter Spacing"),
            subtitle: Text("0.2"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Font Size"),
            subtitle: Text("3"),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
