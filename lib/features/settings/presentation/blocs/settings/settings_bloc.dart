import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/settings_model.dart';
import '../../../domain/use_cases/initialize_settings.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    @required this.initializeSettings,
  }) : super(
          const SettingsState.initial(),
        );

  final InitializeSettings initializeSettings;

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.when(
      initialize: () async* {
        final result = await initializeSettings();
        yield* result.fold(
          (failures) async* {
            yield const SettingsState.error();
          },
          (settingsModel) async* {
            yield SettingsState.show(
              settingsModel: settingsModel,
            );
          },
        );
      },
    );
  }
}
