import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/settings/settings_bloc.dart';
import '../dialogs/character_dialog.dart';
import '../widgets/settings_title_button.dart';

class CharacterSettingsPage extends StatelessWidget {
  const CharacterSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For title widget.
    const indexAdder = 1;

    return Scaffold(
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            show: (settingsModel) {
              final listCharacters = settingsModel.listCharacters;
              return ListView.separated(
                itemCount: listCharacters.length + 1,
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
                        textTitle: tr('change_character'),
                      ),
                    );
                  }

                  final character = listCharacters[index - indexAdder];
                  return ListTile(
                    leading: Text("$index."),
                    title: Text('" $character "'),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => CharacterDialog(
                          indexCharacter: index,
                          listCharacters: listCharacters,
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
