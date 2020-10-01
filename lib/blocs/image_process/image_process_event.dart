part of 'image_process_bloc.dart';

@freezed
abstract class ImageProcessEvent with _$ImageProcessEvent {
  const factory ImageProcessEvent.pickAndProcessImage() = _PickAndProcessImageEvent;
}