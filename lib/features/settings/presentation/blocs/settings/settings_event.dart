part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.initialize() = _InitializeEvent;
  const factory SettingsEvent.updateSettings({
    @required UpdateSettingsParams newSettings,
  }) = _UpdateSettingsEvent;
}