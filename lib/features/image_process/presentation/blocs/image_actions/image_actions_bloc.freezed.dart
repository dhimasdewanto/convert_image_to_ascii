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
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult copyImageText(),
    TResult saveImage(ScreenshotController screenshotController),
    TResult listenImageProcess(ImageResultModel imageResult),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
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
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return copyImageText();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
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
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return copyImageText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
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
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return saveImage(screenshotController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
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
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return saveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
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
    @required TResult copyImageText(),
    @required TResult saveImage(ScreenshotController screenshotController),
    @required TResult listenImageProcess(ImageResultModel imageResult),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return listenImageProcess(imageResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
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
    @required TResult copyImageText(_CopyImageTextEvent value),
    @required TResult saveImage(_SaveImageEvent value),
    @required TResult listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return listenImageProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
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
  _SuccessSaveImageState successSaveImage() {
    return const _SuccessSaveImageState();
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
    @required TResult successSaveImage(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult successSaveImage(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult successCopyText(_SuccessCopyTextState value),
    @required TResult successSaveImage(_SuccessSaveImageState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
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
    @required TResult successSaveImage(),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult successSaveImage(),
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
    @required TResult successSaveImage(_SuccessSaveImageState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
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
    @required TResult successSaveImage(),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successCopyText();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult successSaveImage(),
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
    @required TResult successSaveImage(_SuccessSaveImageState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successCopyText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
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
    @required TResult successSaveImage(),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successSaveImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult successCopyText(),
    TResult successSaveImage(),
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
    @required TResult successSaveImage(_SuccessSaveImageState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successSaveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult successCopyText(_SuccessCopyTextState value),
    TResult successSaveImage(_SuccessSaveImageState value),
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
