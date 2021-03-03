import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/navigators.dart';
import '../blocs/helper/helper_bloc.dart';
import '../dialogs/default_settings_dialog.dart';
import '../dialogs/image_repeat_characters_dialog.dart';
import '../dialogs/image_width_dialog.dart';
import '../dialogs/info_characters_dialog.dart';
import '../dialogs/info_colors_dialog.dart';
import '../dialogs/info_image_width_dialog.dart';
import '../dialogs/info_repeat_characters_dialog.dart';
import '../dialogs/info_total_characters_dialog.dart';
import '../dialogs/is_reversed_dialog.dart';
import '../dialogs/language_dialog.dart';
import '../dialogs/total_characters_dialog.dart';
import '../widgets/settings_page_builder.dart';
import '../widgets/settings_title_button.dart';
import 'character_settings_page.dart';
import 'color_settings_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsPageBuilder(
        builder: (context, settings, showHelperArrow) {
          return ListView(
            children: [
              const SizedBox(height: 10),
              SettingsTitleButton(
                textTitle: tr('settings'),
              ),
              const SizedBox(height: 5),
              const Divider(),
              ListTile(
                title: Text(tr('total_characters')),
                subtitle: Text("${settings.listCharacters.length}"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => TotalCharactersDialog(
                      listCharacters: settings.listCharacters,
                    ),
                  );
                },
                leading: showHelperArrow(HelperStatus.totalCharacters),
                trailing: IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const InfoTotalCharactersDialog(),
                    );
                  },
                ),
              ),
              const Divider(),
              ListTile(
                title: Text(tr('characters')),
                onTap: () {
                  push(
                    context: context,
                    page: const CharacterSettingsPage(),
                  );
                },
                leading: showHelperArrow(HelperStatus.characters),
                trailing: IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const InfoCharactersDialog(),
                    );
                  },
                ),
              ),
              const Divider(),
              ListTile(
                title: Text(tr("colors")),
                onTap: () {
                  push(
                    context: context,
                    page: const ColorSettingsPage(),
                  );
                },
                leading: showHelperArrow(HelperStatus.colors),
                trailing: IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const InfoColorsDialog(),
                    );
                  },
                ),
              ),
              const Divider(),
              ListTile(
                title: Text(tr('image_width')),
                subtitle: Text("${settings.imageWidth}"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => ImageWidthDialog(
                      initialValue: settings.imageWidth,
                    ),
                  );
                },
                leading: showHelperArrow(HelperStatus.imageWidth),
                trailing: IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const InfoImageWidthDialog(),
                    );
                  },
                ),
              ),
              const Divider(),
              ListTile(
                title: Text(tr('repeat_characters_count')),
                subtitle: Text("${settings.repeatedCharacters}x"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => ImageRepeatCharactersDialog(
                      initialValue: settings.repeatedCharacters,
                    ),
                  );
                },
                leading: showHelperArrow(HelperStatus.repeatCharacters),
                trailing: IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const InfoRepeatCharactersDialog(),
                    );
                  },
                ),
              ),
              const Divider(),
              ListTile(
                title: Text(tr('is_color_reserved')),
                subtitle: Text(
                  settings.isColorReversed ? tr('yes') : tr('no'),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => const IsReversedDialog(),
                  );
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("Change Language"),
                subtitle: Text(
                  context.locale.toString() == "id_ID"
                      ? "Indonesia"
                      : "English",
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => const LanguageDialog(),
                  );
                },
              ),
              const Divider(),
              ListTile(
                title: Text(tr('default_settings')),
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
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
