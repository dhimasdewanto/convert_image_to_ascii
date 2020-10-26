import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/default_values.dart';
import '../../../../../core/failures/failures.dart';
import '../../../data/repositories/settings_repo.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    @required this.settingsRepo,
  }) : super(
          const SettingsState.initial(),
        );

  final SettingsRepo settingsRepo;

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.when(
      initialize: () async* {
        final resultCharacters = await settingsRepo.getListCharacters();
        final resultListColorValues = await settingsRepo.getListColors();

        Failures failures;
        final listCharacters = resultCharacters.fold(
          (f) {
            failures = f;
            return null;
          },
          (list) {
            if (list == null) {
              return defaultListCharacters;
            }
            return list;
          },
        );
        final listColorValues = resultListColorValues.fold(
          (f) {
            failures = f;
            return null;
          },
          (list) {
            if (list == null) {
              return defaultListColors;
            }
            return list;
          },
        );

        if (failures != null) {
          yield const SettingsState.error();
        } else {
          yield SettingsState.show(
            listCharacters: listCharacters,
            listColorValues: listColorValues,
          );
        }
      },
    );
  }
}
