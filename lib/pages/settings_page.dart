import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("Characters"),
          ),
          ListTile(
            title: Text("Colors"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
