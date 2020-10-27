import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/settings_model.dart';
import '../../../domain/use_cases/initialize_settings.dart';
import '../../../domain/use_cases/update_settings.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    @required this.initializeSettings,
    @required this.updateSettings,
  }) : super(
          const SettingsState.initial(),
        );

  final InitializeSettings initializeSettings;
  final UpdateSettings updateSettings;

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
      updateSettings: (imageWidth) async* {
        yield* state.maybeWhen(
          orElse: () async* {},
          show: (settingsModel) async* {
            if (imageWidth != null) {
              final result = await updateSettings(
                UpdateSettingsParams(
                  imageWidth: imageWidth,
                ),
              );
              yield* result.fold(
                () async* {
                  add(const SettingsEvent.initialize());
                },
                (failures) async* {
                  yield const SettingsState.error();
                },
              );
            }
          },
        );
      },
    );
  }
}
