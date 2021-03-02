import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../blocs/settings/settings_bloc.dart';
import '../dialogs/default_settings_dialog.dart';
import '../dialogs/image_repeat_characters_dialog.dart';
import '../dialogs/image_width_dialog.dart';
import '../dialogs/info_characters_dialog.dart';
import '../dialogs/info_total_characters_dialog.dart';
import '../dialogs/is_reversed_dialog.dart';
import '../dialogs/language_dialog.dart';
import '../dialogs/total_characters_dialog.dart';
import 'character_settings_page.dart';
import 'color_settings_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline6 =
        Theme.of(context).textTheme.headline6 ?? const TextStyle();
    final borderRadius = BorderRadius.circular(100);

    return Scaffold(
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            show: (settingsModel) {
              return ListView(
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: borderRadius,
                        border: Border.all(
                          color: headline6.color ?? Colors.white,
                        ),
                      ),
                      child: InkWell(
                        borderRadius: borderRadius,
                        onTap: () {
                          pop(context: context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                tr('settings'),
                                style: headline6,
                              ),
                              const SizedBox(width: 10),
                              const Icon(Icons.close),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Divider(),
                  ListTile(
                    title: Text(tr('total_characters')),
                    subtitle: Text("${settingsModel.listCharacters.length}"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => TotalCharactersDialog(
                          listCharacters: settingsModel.listCharacters,
                        ),
                      );
                    },
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
                  ),
                  const Divider(),
                  ListTile(
                    title: Text(tr('image_width')),
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
                    title: Text(tr('repeat_characters_count')),
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
                    title: Text(tr('is_color_reserved')),
                    subtitle: Text(
                      settingsModel.isColorReversed ? tr('yes') : tr('no'),
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
