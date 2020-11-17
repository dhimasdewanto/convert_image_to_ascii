part of 'image_process_bloc.dart';

@freezed
abstract class ImageProcessState with _$ImageProcessState {
  const factory ImageProcessState.initial() = _InitialState;
  const factory ImageProcessState.loading() = _LoadingState;
  const factory ImageProcessState.error({
    @Default("Error") String message,
  }) = _ErrorState;
  const factory ImageProcessState.imagePicked({
    @required File imageSource,
  }) = _ImagePickedState;
  const factory ImageProcessState.showResult({
    @required ImageResultModel imageResult,
  }) = _ShowResultState;
}
