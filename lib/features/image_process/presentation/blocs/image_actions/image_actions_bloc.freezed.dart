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
      {@required File imageSource,
      @required ImageResultModel imageResult,
      @required Uint8List convertedImageBytes}) {
    return _ListenImageProcessEvent(
      imageSource: imageSource,
      imageResult: imageResult,
      convertedImageBytes: convertedImageBytes,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageActionsEvent = _$ImageActionsEventTearOff();

/// @nodoc
mixin _$ImageActionsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result copyImageText(),
    @required Result saveImage(ScreenshotController screenshotController),
    @required
        Result listenImageProcess(File imageSource,
            ImageResultModel imageResult, Uint8List convertedImageBytes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result copyImageText(),
    Result saveImage(ScreenshotController screenshotController),
    Result listenImageProcess(File imageSource, ImageResultModel imageResult,
        Uint8List convertedImageBytes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result copyImageText(_CopyImageTextEvent value),
    @required Result saveImage(_SaveImageEvent value),
    @required Result listenImageProcess(_ListenImageProcessEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result copyImageText(_CopyImageTextEvent value),
    Result saveImage(_SaveImageEvent value),
    Result listenImageProcess(_ListenImageProcessEvent value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result copyImageText(),
    @required Result saveImage(ScreenshotController screenshotController),
    @required
        Result listenImageProcess(File imageSource,
            ImageResultModel imageResult, Uint8List convertedImageBytes),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return copyImageText();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result copyImageText(),
    Result saveImage(ScreenshotController screenshotController),
    Result listenImageProcess(File imageSource, ImageResultModel imageResult,
        Uint8List convertedImageBytes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyImageText != null) {
      return copyImageText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result copyImageText(_CopyImageTextEvent value),
    @required Result saveImage(_SaveImageEvent value),
    @required Result listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return copyImageText(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result copyImageText(_CopyImageTextEvent value),
    Result saveImage(_SaveImageEvent value),
    Result listenImageProcess(_ListenImageProcessEvent value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result copyImageText(),
    @required Result saveImage(ScreenshotController screenshotController),
    @required
        Result listenImageProcess(File imageSource,
            ImageResultModel imageResult, Uint8List convertedImageBytes),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return saveImage(screenshotController);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result copyImageText(),
    Result saveImage(ScreenshotController screenshotController),
    Result listenImageProcess(File imageSource, ImageResultModel imageResult,
        Uint8List convertedImageBytes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveImage != null) {
      return saveImage(screenshotController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result copyImageText(_CopyImageTextEvent value),
    @required Result saveImage(_SaveImageEvent value),
    @required Result listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return saveImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result copyImageText(_CopyImageTextEvent value),
    Result saveImage(_SaveImageEvent value),
    Result listenImageProcess(_ListenImageProcessEvent value),
    @required Result orElse(),
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
  $Res call(
      {File imageSource,
      ImageResultModel imageResult,
      Uint8List convertedImageBytes});
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
    Object imageSource = freezed,
    Object imageResult = freezed,
    Object convertedImageBytes = freezed,
  }) {
    return _then(_ListenImageProcessEvent(
      imageSource:
          imageSource == freezed ? _value.imageSource : imageSource as File,
      imageResult: imageResult == freezed
          ? _value.imageResult
          : imageResult as ImageResultModel,
      convertedImageBytes: convertedImageBytes == freezed
          ? _value.convertedImageBytes
          : convertedImageBytes as Uint8List,
    ));
  }
}

/// @nodoc
class _$_ListenImageProcessEvent implements _ListenImageProcessEvent {
  const _$_ListenImageProcessEvent(
      {@required this.imageSource,
      @required this.imageResult,
      @required this.convertedImageBytes})
      : assert(imageSource != null),
        assert(imageResult != null),
        assert(convertedImageBytes != null);

  @override
  final File imageSource;
  @override
  final ImageResultModel imageResult;
  @override
  final Uint8List convertedImageBytes;

  @override
  String toString() {
    return 'ImageActionsEvent.listenImageProcess(imageSource: $imageSource, imageResult: $imageResult, convertedImageBytes: $convertedImageBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListenImageProcessEvent &&
            (identical(other.imageSource, imageSource) ||
                const DeepCollectionEquality()
                    .equals(other.imageSource, imageSource)) &&
            (identical(other.imageResult, imageResult) ||
                const DeepCollectionEquality()
                    .equals(other.imageResult, imageResult)) &&
            (identical(other.convertedImageBytes, convertedImageBytes) ||
                const DeepCollectionEquality()
                    .equals(other.convertedImageBytes, convertedImageBytes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageSource) ^
      const DeepCollectionEquality().hash(imageResult) ^
      const DeepCollectionEquality().hash(convertedImageBytes);

  @override
  _$ListenImageProcessEventCopyWith<_ListenImageProcessEvent> get copyWith =>
      __$ListenImageProcessEventCopyWithImpl<_ListenImageProcessEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result copyImageText(),
    @required Result saveImage(ScreenshotController screenshotController),
    @required
        Result listenImageProcess(File imageSource,
            ImageResultModel imageResult, Uint8List convertedImageBytes),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return listenImageProcess(imageSource, imageResult, convertedImageBytes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result copyImageText(),
    Result saveImage(ScreenshotController screenshotController),
    Result listenImageProcess(File imageSource, ImageResultModel imageResult,
        Uint8List convertedImageBytes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listenImageProcess != null) {
      return listenImageProcess(imageSource, imageResult, convertedImageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result copyImageText(_CopyImageTextEvent value),
    @required Result saveImage(_SaveImageEvent value),
    @required Result listenImageProcess(_ListenImageProcessEvent value),
  }) {
    assert(copyImageText != null);
    assert(saveImage != null);
    assert(listenImageProcess != null);
    return listenImageProcess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result copyImageText(_CopyImageTextEvent value),
    Result saveImage(_SaveImageEvent value),
    Result listenImageProcess(_ListenImageProcessEvent value),
    @required Result orElse(),
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
      {@required File imageSource,
      @required ImageResultModel imageResult,
      @required Uint8List convertedImageBytes}) = _$_ListenImageProcessEvent;

  File get imageSource;
  ImageResultModel get imageResult;
  Uint8List get convertedImageBytes;
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result successCopyText(),
    @required Result successSaveImage(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result successCopyText(),
    Result successSaveImage(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result successCopyText(_SuccessCopyTextState value),
    @required Result successSaveImage(_SuccessSaveImageState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result successCopyText(_SuccessCopyTextState value),
    Result successSaveImage(_SuccessSaveImageState value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result successCopyText(),
    @required Result successSaveImage(),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result successCopyText(),
    Result successSaveImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result successCopyText(_SuccessCopyTextState value),
    @required Result successSaveImage(_SuccessSaveImageState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result successCopyText(_SuccessCopyTextState value),
    Result successSaveImage(_SuccessSaveImageState value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result successCopyText(),
    @required Result successSaveImage(),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successCopyText();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result successCopyText(),
    Result successSaveImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successCopyText != null) {
      return successCopyText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result successCopyText(_SuccessCopyTextState value),
    @required Result successSaveImage(_SuccessSaveImageState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successCopyText(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result successCopyText(_SuccessCopyTextState value),
    Result successSaveImage(_SuccessSaveImageState value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result successCopyText(),
    @required Result successSaveImage(),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successSaveImage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result successCopyText(),
    Result successSaveImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successSaveImage != null) {
      return successSaveImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result successCopyText(_SuccessCopyTextState value),
    @required Result successSaveImage(_SuccessSaveImageState value),
  }) {
    assert(initial != null);
    assert(successCopyText != null);
    assert(successSaveImage != null);
    return successSaveImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result successCopyText(_SuccessCopyTextState value),
    Result successSaveImage(_SuccessSaveImageState value),
    @required Result orElse(),
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
