part of 'image_actions_bloc.dart';

@freezed
abstract class ImageActionsEvent with _$ImageActionsEvent {
  const factory ImageActionsEvent.copyImageText() = _CopyImageTextEvent;
}