import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/navigators.dart';
import '../../../../main/presentation/pages/home_page.dart';
import '../../../domain/models/settings_model.dart';
import '../../../domain/use_cases/get_settings.dart';
import '../../../domain/use_cases/update_settings.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_listeners.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    @required this.getSettings,
    @required this.updateSettings,
  }) : super(
          const SettingsState.initial(),
        );

  final GetSettings getSettings;
  final UpdateSettings updateSettings;

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.when(
      initialize: () async* {
        final result = await getSettings();
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
      updateSettings: (newSettings) async* {
        yield* state.maybeWhen(
          orElse: () async* {},
          show: (settings) async* {
            final result = await updateSettings(newSettings);
            yield* result.fold(
              () async* {
                add(const SettingsEvent.initialize());
              },
              (failures) async* {
                yield const SettingsState.error();
              },
            );
          },
        );
      },
    );
  }
}
