part of 'image_process_bloc.dart';

@freezed
abstract class ImageProcessEvent with _$ImageProcessEvent {
  const factory ImageProcessEvent.pickImage() = _PickImageEvent;
  const factory ImageProcessEvent.processImage() = _ProcessImageEvent;
  const factory ImageProcessEvent.updateSettings({
    @required SettingsModel settingsModel,
  }) = _UpdateSettingsEvent;
}
