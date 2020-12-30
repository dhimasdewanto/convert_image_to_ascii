// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_actions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageActionsEventTearOff {
  const _$ImageActionsEventTearOff();

// ignore: unused_element
  _ResetStateEvent resetState() {
    return const _ResetStateEvent();
  }

// ignore: unused_element
  _CopyImageTextEvent copyImageText() {
    return const _CopyImageTextEvent();
  }

// ignore: unused_element
  _SaveImageEvent saveImage(
      {@required ScreenshotController screenshotController}) {
    return _SaveImageEvent(
      screenshotController: screenshotController,
    );
  }

// ignore: unused_element
  _ListenImageProcessEvent listenImageProcess(
      {@required ImageResultModel imageResult}) {
    return _ListenImageProcessEvent(
      imageResult: imageResult,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageActionsEvent = _$ImageActionsEventTearOff();

/// @nodoc
mixin _$ImageActionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult copyImageText(),
    TResult saveImage(ScreenshotController screenshotController),
    TResult listenImageProcess(ImageResultModel imageResult),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(_ResetStateEvent value),
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(_ResetStateEvent value),
    TResult copyImageText(_CopyImageTextEvent value),
    TResult saveImage(_SaveImageEvent value),
    TResult listenImageProcess(_ListenImageProcessEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageActionsEventCopyWith<$Res> {
  factory $ImageActionsEventCopyWith(
          ImageActionsEvent value, $Res Function(ImageActionsEvent) then) =
      _$ImageActionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageActionsEventCopyWithImpl<$Res>
    implements $ImageActionsEventCopyWith<$Res> {
  _$ImageActionsEventCopyWithImpl(this._value, this._then);

  final ImageActionsEvent _value;
  // ignore: unused_field
  final $Res Function(ImageActionsEvent) _then;
}

/// @nodoc
abstract class _$ResetStateEventCopyWith<$Res> {
  factory _$ResetStateEventCopyWith(
          _ResetStateEvent value, $Res Function(_ResetStateEvent) then) =
      __$ResetStateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetStateEventCopyWithImpl<$Res>
    extends _$ImageActionsEventCopyWithImpl<$Res>
    implements _$ResetStateEventCopyWith<$Res> {
  __$ResetStateEventCopyWithImpl(
      _ResetStateEvent _value, $Res Function(_ResetStateEvent) _then)
      : super(_value, (v) => _then(v as _ResetStateEvent));

  @override
  _ResetStateEvent get _value => super._value as _ResetStateEvent;
}

/// @nodoc
class _$_ResetStateEvent implements _ResetStateEvent {
  const _$_ResetStateEvent();

  @override
  String toString() {
    return 'ImageActionsEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetStateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult copyImageText(),
    TResult saveImage(ScreenshotController screenshotController),
    TResult listenImageProcess(ImageResultModel imageResult),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(_ResetStateEvent value),
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(_ResetStateEvent value),
    TResult copyImageText(_CopyImageTextEvent value),
    TResult saveImage(_SaveImageEvent value),
    TResult listenImageProcess(_ListenImageProcessEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetStateEvent implements ImageActionsEvent {
  const factory _ResetStateEvent() = _$_ResetStateEvent;
}

/// @nodoc
abstract class _$CopyImageTextEventCopyWith<$Res> {
  factory _$CopyImageTextEventCopyWith(
          _CopyImageTextEvent value, $Res Function(_CopyImageTextEvent) then) =
      __$CopyImageTextEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CopyImageTextEventCopyWithImpl<$Res>
    extends _$ImageActionsEventCopyWithImpl<$Res>
    implements _$CopyImageTextEventCopyWith<$Res> {
  __$CopyImageTextEventCopyWithImpl(
      _CopyImageTextEvent _value, $Res Function(_CopyImageTextEvent) _then)
      : super(_value, (v) => _then(v as _CopyImageTextEvent));

  @override
  _CopyImageTextEvent get _value => super._value as _CopyImageTextEvent;
}

/// @nodoc
class _$_CopyImageTextEvent implements _CopyImageTextEvent {
  const _$_CopyImageTextEvent();

  @override
  String toString() {
    return 'ImageActionsEvent.copyImageText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CopyImageTextEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return copyImageText();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult copyImageText(),
    TResult saveImage(ScreenshotController screenshotController),
    TResult listenImageProcess(ImageResultModel imageResult),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (copyImageText != null) {
      return copyImageText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(_ResetStateEvent value),
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return copyImageText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(_ResetStateEvent value),
    TResult copyImageText(_CopyImageTextEvent value),
    TResult saveImage(_SaveImageEvent value),
    TResult listenImageProcess(_ListenImageProcessEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (copyImageText != null) {
      return copyImageText(this);
    }
    return orElse();
  }
}

abstract class _CopyImageTextEvent implements ImageActionsEvent {
  const factory _CopyImageTextEvent() = _$_CopyImageTextEvent;
}

/// @nodoc
abstract class _$SaveImageEventCopyWith<$Res> {
  factory _$SaveImageEventCopyWith(
          _SaveImageEvent value, $Res Function(_SaveImageEvent) then) =
      __$SaveImageEventCopyWithImpl<$Res>;
  $Res call({ScreenshotController screenshotController});
}

/// @nodoc
class __$SaveImageEventCopyWithImpl<$Res>
    extends _$ImageActionsEventCopyWithImpl<$Res>
    implements _$SaveImageEventCopyWith<$Res> {
  __$SaveImageEventCopyWithImpl(
      _SaveImageEvent _value, $Res Function(_SaveImageEvent) _then)
      : super(_value, (v) => _then(v as _SaveImageEvent));

  @override
  _SaveImageEvent get _value => super._value as _SaveImageEvent;

  @override
  $Res call({
    Object screenshotController = freezed,
  }) {
    return _then(_SaveImageEvent(
      screenshotController: screenshotController == freezed
          ? _value.screenshotController
          : screenshotController as ScreenshotController,
    ));
  }
}

/// @nodoc
class _$_SaveImageEvent implements _SaveImageEvent {
  const _$_SaveImageEvent({@required this.screenshotController})
      : assert(screenshotController != null);

  @override
  final ScreenshotController screenshotController;

  @override
  String toString() {
    return 'ImageActionsEvent.saveImage(screenshotController: $screenshotController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveImageEvent &&
            (identical(other.screenshotController, screenshotController) ||
                const DeepCollectionEquality()
                    .equals(other.screenshotController, screenshotController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(screenshotController);

  @override
  _$SaveImageEventCopyWith<_SaveImageEvent> get copyWith =>
      __$SaveImageEventCopyWithImpl<_SaveImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return saveImage(screenshotController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult copyImageText(),
    TResult saveImage(ScreenshotController screenshotController),
    TResult listenImageProcess(ImageResultModel imageResult),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveImage != null) {
      return saveImage(screenshotController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(_ResetStateEvent value),
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return saveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(_ResetStateEvent value),
    TResult copyImageText(_CopyImageTextEvent value),
    TResult saveImage(_SaveImageEvent value),
    TResult listenImageProcess(_ListenImageProcessEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveImage != null) {
      return saveImage(this);
    }
    return orElse();
  }
}

abstract class _SaveImageEvent implements ImageActionsEvent {
  const factory _SaveImageEvent(
          {@required ScreenshotController screenshotController}) =
      _$_SaveImageEvent;

  ScreenshotController get screenshotController;
  _$SaveImageEventCopyWith<_SaveImageEvent> get copyWith;
}

/// @nodoc
abstract class _$ListenImageProcessEventCopyWith<$Res> {
  factory _$ListenImageProcessEventCopyWith(_ListenImageProcessEvent value,
          $Res Function(_ListenImageProcessEvent) then) =
      __$ListenImageProcessEventCopyWithImpl<$Res>;
  $Res call({ImageResultModel imageResult});
}

/// @nodoc
class __$ListenImageProcessEventCopyWithImpl<$Res>
    extends _$ImageActionsEventCopyWithImpl<$Res>
    implements _$ListenImageProcessEventCopyWith<$Res> {
  __$ListenImageProcessEventCopyWithImpl(_ListenImageProcessEvent _value,
      $Res Function(_ListenImageProcessEvent) _then)
      : super(_value, (v) => _then(v as _ListenImageProcessEvent));

  @override
  _ListenImageProcessEvent get _value =>
      super._value as _ListenImageProcessEvent;

  @override
  $Res call({
    Object imageResult = freezed,
  }) {
    return _then(_ListenImageProcessEvent(
      imageResult: imageResult == freezed
          ? _value.imageResult
          : imageResult as ImageResultModel,
    ));
  }
}

/// @nodoc
class _$_ListenImageProcessEvent implements _ListenImageProcessEvent {
  const _$_ListenImageProcessEvent({@required this.imageResult})
      : assert(imageResult != null);

  @override
  final ImageResultModel imageResult;

  @override
  String toString() {
    return 'ImageActionsEvent.listenImageProcess(imageResult: $imageResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListenImageProcessEvent &&
            (identical(other.imageResult, imageResult) ||
                const DeepCollectionEquality()
                    .equals(other.imageResult, imageResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageResult);

  @override
  _$ListenImageProcessEventCopyWith<_ListenImageProcessEvent> get copyWith =>
      __$ListenImageProcessEventCopyWithImpl<_ListenImageProcessEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return listenImageProcess(imageResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult copyImageText(),
    TResult saveImage(ScreenshotController screenshotController),
    TResult listenImageProcess(ImageResultModel imageResult),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listenImageProcess != null) {
      return listenImageProcess(imageResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(_ResetStateEvent value),
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(resetState != null);
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return listenImageProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(_ResetStateEvent value),
    TResult copyImageText(_CopyImageTextEvent value),
    TResult saveImage(_SaveImageEvent value),
    TResult listenImageProcess(_ListenImageProcessEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listenImageProcess != null) {
      return listenImageProcess(this);
    }
    return orElse();
  }
}

abstract class _ListenImageProcessEvent implements ImageActionsEvent {
  const factory _ListenImageProcessEvent(
      {@required ImageResultModel imageResult}) = _$_ListenImageProcessEvent;

  ImageResultModel get imageResult;
  _$ListenImageProcessEventCopyWith<_ListenImageProcessEvent> get copyWith;
}

/// @nodoc
class _$ImageActionsStateTearOff {
  const _$ImageActionsStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _SuccessCopyTextState successCopyText() {
    return const _SuccessCopyTextState();
  }

// ignore: unused_element
  _LoadingCopyTextState loadingCopyText() {
    return const _LoadingCopyTextState();
  }

// ignore: unused_element
  _SuccessSaveImageState successSaveImage() {
    return const _SuccessSaveImageState();
  }

// ignore: unused_element
  _LoadingSaveImageState loadingSaveImage() {
    return const _LoadingSaveImageState();
  }

// ignore: unused_element
  _SuccessState success({String message = "Success"}) {
    return _SuccessState(
      message: message,
    );
  }

// ignore: unused_element
  _ErrorState error({String message = "Error"}) {
    return _ErrorState(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageActionsState = _$ImageActionsStateTearOff();

/// @nodoc
mixin _$ImageActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageActionsStateCopyWith<$Res> {
  factory $ImageActionsStateCopyWith(
          ImageActionsState value, $Res Function(ImageActionsState) then) =
      _$ImageActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageActionsStateCopyWithImpl<$Res>
    implements $ImageActionsStateCopyWith<$Res> {
  _$ImageActionsStateCopyWithImpl(this._value, this._then);

  final ImageActionsState _value;
  // ignore: unused_field
  final $Res Function(ImageActionsState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$ImageActionsStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;
}

/// @nodoc
class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'ImageActionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ImageActionsState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$SuccessCopyTextStateCopyWith<$Res> {
  factory _$SuccessCopyTextStateCopyWith(_SuccessCopyTextState value,
          $Res Function(_SuccessCopyTextState) then) =
      __$SuccessCopyTextStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyTextStateCopyWithImpl<$Res>
    extends _$ImageActionsStateCopyWithImpl<$Res>
    implements _$SuccessCopyTextStateCopyWith<$Res> {
  __$SuccessCopyTextStateCopyWithImpl(
      _SuccessCopyTextState _value, $Res Function(_SuccessCopyTextState) _then)
      : super(_value, (v) => _then(v as _SuccessCopyTextState));

  @override
  _SuccessCopyTextState get _value => super._value as _SuccessCopyTextState;
}

/// @nodoc
class _$_SuccessCopyTextState implements _SuccessCopyTextState {
  const _$_SuccessCopyTextState();

  @override
  String toString() {
    return 'ImageActionsState.successCopyText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessCopyTextState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return successCopyText();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (successCopyText != null) {
      return successCopyText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return successCopyText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (successCopyText != null) {
      return successCopyText(this);
    }
    return orElse();
  }
}

abstract class _SuccessCopyTextState implements ImageActionsState {
  const factory _SuccessCopyTextState() = _$_SuccessCopyTextState;
}

/// @nodoc
abstract class _$LoadingCopyTextStateCopyWith<$Res> {
  factory _$LoadingCopyTextStateCopyWith(_LoadingCopyTextState value,
          $Res Function(_LoadingCopyTextState) then) =
      __$LoadingCopyTextStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyTextStateCopyWithImpl<$Res>
    extends _$ImageActionsStateCopyWithImpl<$Res>
    implements _$LoadingCopyTextStateCopyWith<$Res> {
  __$LoadingCopyTextStateCopyWithImpl(
      _LoadingCopyTextState _value, $Res Function(_LoadingCopyTextState) _then)
      : super(_value, (v) => _then(v as _LoadingCopyTextState));

  @override
  _LoadingCopyTextState get _value => super._value as _LoadingCopyTextState;
}

/// @nodoc
class _$_LoadingCopyTextState implements _LoadingCopyTextState {
  const _$_LoadingCopyTextState();

  @override
  String toString() {
    return 'ImageActionsState.loadingCopyText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingCopyTextState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return loadingCopyText();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingCopyText != null) {
      return loadingCopyText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return loadingCopyText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingCopyText != null) {
      return loadingCopyText(this);
    }
    return orElse();
  }
}

abstract class _LoadingCopyTextState implements ImageActionsState {
  const factory _LoadingCopyTextState() = _$_LoadingCopyTextState;
}

/// @nodoc
abstract class _$SuccessSaveImageStateCopyWith<$Res> {
  factory _$SuccessSaveImageStateCopyWith(_SuccessSaveImageState value,
          $Res Function(_SuccessSaveImageState) then) =
      __$SuccessSaveImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessSaveImageStateCopyWithImpl<$Res>
    extends _$ImageActionsStateCopyWithImpl<$Res>
    implements _$SuccessSaveImageStateCopyWith<$Res> {
  __$SuccessSaveImageStateCopyWithImpl(_SuccessSaveImageState _value,
      $Res Function(_SuccessSaveImageState) _then)
      : super(_value, (v) => _then(v as _SuccessSaveImageState));

  @override
  _SuccessSaveImageState get _value => super._value as _SuccessSaveImageState;
}

/// @nodoc
class _$_SuccessSaveImageState implements _SuccessSaveImageState {
  const _$_SuccessSaveImageState();

  @override
  String toString() {
    return 'ImageActionsState.successSaveImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessSaveImageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return successSaveImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (successSaveImage != null) {
      return successSaveImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return successSaveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (successSaveImage != null) {
      return successSaveImage(this);
    }
    return orElse();
  }
}

abstract class _SuccessSaveImageState implements ImageActionsState {
  const factory _SuccessSaveImageState() = _$_SuccessSaveImageState;
}

/// @nodoc
abstract class _$LoadingSaveImageStateCopyWith<$Res> {
  factory _$LoadingSaveImageStateCopyWith(_LoadingSaveImageState value,
          $Res Function(_LoadingSaveImageState) then) =
      __$LoadingSaveImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingSaveImageStateCopyWithImpl<$Res>
    extends _$ImageActionsStateCopyWithImpl<$Res>
    implements _$LoadingSaveImageStateCopyWith<$Res> {
  __$LoadingSaveImageStateCopyWithImpl(_LoadingSaveImageState _value,
      $Res Function(_LoadingSaveImageState) _then)
      : super(_value, (v) => _then(v as _LoadingSaveImageState));

  @override
  _LoadingSaveImageState get _value => super._value as _LoadingSaveImageState;
}

/// @nodoc
class _$_LoadingSaveImageState implements _LoadingSaveImageState {
  const _$_LoadingSaveImageState();

  @override
  String toString() {
    return 'ImageActionsState.loadingSaveImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingSaveImageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return loadingSaveImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSaveImage != null) {
      return loadingSaveImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return loadingSaveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSaveImage != null) {
      return loadingSaveImage(this);
    }
    return orElse();
  }
}

abstract class _LoadingSaveImageState implements ImageActionsState {
  const factory _LoadingSaveImageState() = _$_LoadingSaveImageState;
}

/// @nodoc
abstract class _$SuccessStateCopyWith<$Res> {
  factory _$SuccessStateCopyWith(
          _SuccessState value, $Res Function(_SuccessState) then) =
      __$SuccessStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$SuccessStateCopyWithImpl<$Res>
    extends _$ImageActionsStateCopyWithImpl<$Res>
    implements _$SuccessStateCopyWith<$Res> {
  __$SuccessStateCopyWithImpl(
      _SuccessState _value, $Res Function(_SuccessState) _then)
      : super(_value, (v) => _then(v as _SuccessState));

  @override
  _SuccessState get _value => super._value as _SuccessState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_SuccessState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_SuccessState implements _SuccessState {
  const _$_SuccessState({this.message = "Success"}) : assert(message != null);

  @JsonKey(defaultValue: "Success")
  @override
  final String message;

  @override
  String toString() {
    return 'ImageActionsState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$SuccessStateCopyWith<_SuccessState> get copyWith =>
      __$SuccessStateCopyWithImpl<_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements ImageActionsState {
  const factory _SuccessState({String message}) = _$_SuccessState;

  String get message;
  _$SuccessStateCopyWith<_SuccessState> get copyWith;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res>
    extends _$ImageActionsStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({this.message = "Error"}) : assert(message != null);

  @JsonKey(defaultValue: "Error")
  @override
  final String message;

  @override
  String toString() {
    return 'ImageActionsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult successCopyText(),
    @required TResult loadingCopyText(),
    @required TResult successSaveImage(),
    @required TResult loadingSaveImage(),
    @required TResult success(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult loadingCopyText(),
    TResult successSaveImage(),
    TResult loadingSaveImage(),
    TResult success(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult loadingCopyText(_LoadingCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
    @required TResult loadingSaveImage(_LoadingSaveImageState value),
    @required TResult success(_SuccessState value),
    @required TResult error(_ErrorState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(loadingCopyText != null);
    assert(successSaveImage != null);
    assert(loadingSaveImage != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult loadingCopyText(_LoadingCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
    TResult loadingSaveImage(_LoadingSaveImageState value),
    TResult success(_SuccessState value),
    TResult error(_ErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ImageActionsState {
  const factory _ErrorState({String message}) = _$_ErrorState;

  String get message;
  _$ErrorStateCopyWith<_ErrorState> get copyWith;
}
