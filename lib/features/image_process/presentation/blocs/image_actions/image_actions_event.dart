part of 'image_actions_bloc.dart';

@freezed
abstract class ImageActionsEvent with _$ImageActionsEvent {
  const factory ImageActionsEvent.copyImageText() = _CopyImageTextEvent;
  const factory ImageActionsEvent.saveImage({
    @required ScreenshotController screenshotController,
  }) = _SaveImageEvent;
  const factory ImageActionsEvent.listenImageProcess({
    @required File imageSource,
    @required ImageResultModel imageResult,
    @required Uint8List convertedImageBytes,
  }) = _ListenImageProcessEvent;
}
