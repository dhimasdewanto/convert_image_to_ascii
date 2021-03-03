import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/settings/settings_bloc.dart';
import '../dialogs/character_dialog.dart';

class CharacterSettingsPage extends StatelessWidget {
  const CharacterSettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('change_character')),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            show: (settingsModel) {
              final listCharacters = settingsModel.listCharacters;
              return ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: listCharacters.length,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  final character = listCharacters[index];
                  return ListTile(
                    leading: Text("${index + 1}."),
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
