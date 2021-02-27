part of 'image_actions_bloc.dart';

@freezed
abstract class ImageActionsState with _$ImageActionsState {
  const factory ImageActionsState.initial() = _InitialState;
  const factory ImageActionsState.successCopyText() = _SuccessCopyTextState;
  const factory ImageActionsState.loadingCopyText() = _LoadingCopyTextState;
  const factory ImageActionsState.successSaveImage() = _SuccessSaveImageState;
  const factory ImageActionsState.loadingSaveImage() = _LoadingSaveImageState;
  const factory ImageActionsState.success({
    @Default("success") String message,
  }) = _SuccessState;
  const factory ImageActionsState.error({
    @Default("error") String message,
  }) = _ErrorState;
}
