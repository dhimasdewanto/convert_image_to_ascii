import 'package:flutter/material.dart';

import '../core/settings.dart';

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
          const ListTile(
            title: Text("Characters"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Colors"),
          ),
          const Divider(),
          Column(
            children: levelColors.map((colorInt) {
              return Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Color(colorInt),
                  ),
                  Text(" = $colorInt"),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
