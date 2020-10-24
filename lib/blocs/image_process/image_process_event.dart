part of 'image_process_bloc.dart';

@freezed
abstract class ImageProcessEvent with _$ImageProcessEvent {
  const factory ImageProcessEvent.pickImage({
    @required List<int> listColorValues,
    @required List<String> listCharacters,
  }) = _PickImageEvent;
  const factory ImageProcessEvent.processImage({
    @required List<int> listColorValues,
    @required List<String> listCharacters,
  }) = _ProcessImageEvent;
}
