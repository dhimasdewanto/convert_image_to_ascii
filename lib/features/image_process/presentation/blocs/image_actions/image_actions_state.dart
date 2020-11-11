part of 'image_actions_bloc.dart';

@freezed
abstract class ImageActionsState with _$ImageActionsState {
  const factory ImageActionsState.initial() = _InitialState;
  const factory ImageActionsState.successCopyText() = _SuccessCopyTextState;
}
