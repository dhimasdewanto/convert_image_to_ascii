part of 'image_process_bloc.dart';

@freezed
abstract class ImageProcessEvent with _$ImageProcessEvent {
  const factory ImageProcessEvent.pickImage({
    @required SettingsModel settingsModel,
  }) = _PickImageEvent;
  const factory ImageProcessEvent.processImage({
    @required SettingsModel settingsModel,
  }) = _ProcessImageEvent;
}
