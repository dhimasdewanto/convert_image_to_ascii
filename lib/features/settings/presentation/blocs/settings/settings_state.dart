part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _InitialState;
  const factory SettingsState.error({
    @Default("Error") String message,
  }) = _ErrorState;
  const factory SettingsState.show({
    required SettingsModel settingsModel,
  }) = _ShowState;
}
