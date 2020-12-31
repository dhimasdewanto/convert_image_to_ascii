// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_process_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageProcessEventTearOff {
  const _$ImageProcessEventTearOff();

// ignore: unused_element
  _PickImageEvent pickImage() {
    return const _PickImageEvent();
  }

// ignore: unused_element
  _ProcessImageEvent processImage() {
    return const _ProcessImageEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $ImageProcessEvent = _$ImageProcessEventTearOff();

/// @nodoc
mixin _$ImageProcessEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pickImage(),
    @required TResult processImage(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pickImage(),
    TResult processImage(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pickImage(_PickImageEvent value),
    @required TResult processImage(_ProcessImageEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pickImage(_PickImageEvent value),
    TResult processImage(_ProcessImageEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageProcessEventCopyWith<$Res> {
  factory $ImageProcessEventCopyWith(
          ImageProcessEvent value, $Res Function(ImageProcessEvent) then) =
      _$ImageProcessEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageProcessEventCopyWithImpl<$Res>
    implements $ImageProcessEventCopyWith<$Res> {
  _$ImageProcessEventCopyWithImpl(this._value, this._then);

  final ImageProcessEvent _value;
  // ignore: unused_field
  final $Res Function(ImageProcessEvent) _then;
}

/// @nodoc
abstract class _$PickImageEventCopyWith<$Res> {
  factory _$PickImageEventCopyWith(
          _PickImageEvent value, $Res Function(_PickImageEvent) then) =
      __$PickImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$PickImageEventCopyWithImpl<$Res>
    extends _$ImageProcessEventCopyWithImpl<$Res>
    implements _$PickImageEventCopyWith<$Res> {
  __$PickImageEventCopyWithImpl(
      _PickImageEvent _value, $Res Function(_PickImageEvent) _then)
      : super(_value, (v) => _then(v as _PickImageEvent));

  @override
  _PickImageEvent get _value => super._value as _PickImageEvent;
}

/// @nodoc
class _$_PickImageEvent implements _PickImageEvent {
  const _$_PickImageEvent();

  @override
  String toString() {
    return 'ImageProcessEvent.pickImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PickImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pickImage(),
    @required TResult processImage(),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pickImage(),
    TResult processImage(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pickImage(_PickImageEvent value),
    @required TResult processImage(_ProcessImageEvent value),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pickImage(_PickImageEvent value),
    TResult processImage(_ProcessImageEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImageEvent implements ImageProcessEvent {
  const factory _PickImageEvent() = _$_PickImageEvent;
}

/// @nodoc
abstract class _$ProcessImageEventCopyWith<$Res> {
  factory _$ProcessImageEventCopyWith(
          _ProcessImageEvent value, $Res Function(_ProcessImageEvent) then) =
      __$ProcessImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProcessImageEventCopyWithImpl<$Res>
    extends _$ImageProcessEventCopyWithImpl<$Res>
    implements _$ProcessImageEventCopyWith<$Res> {
  __$ProcessImageEventCopyWithImpl(
      _ProcessImageEvent _value, $Res Function(_ProcessImageEvent) _then)
      : super(_value, (v) => _then(v as _ProcessImageEvent));

  @override
  _ProcessImageEvent get _value => super._value as _ProcessImageEvent;
}

/// @nodoc
class _$_ProcessImageEvent implements _ProcessImageEvent {
  const _$_ProcessImageEvent();

  @override
  String toString() {
    return 'ImageProcessEvent.processImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProcessImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pickImage(),
    @required TResult processImage(),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return processImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pickImage(),
    TResult processImage(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (processImage != null) {
      return processImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pickImage(_PickImageEvent value),
    @required TResult processImage(_ProcessImageEvent value),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return processImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pickImage(_PickImageEvent value),
    TResult processImage(_ProcessImageEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (processImage != null) {
      return processImage(this);
    }
    return orElse();
  }
}

abstract class _ProcessImageEvent implements ImageProcessEvent {
  const factory _ProcessImageEvent() = _$_ProcessImageEvent;
}

/// @nodoc
class _$ImageProcessStateTearOff {
  const _$ImageProcessStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _LoadingState loading() {
    return const _LoadingState();
  }

// ignore: unused_element
  _ErrorState error({String message = 'Error'}) {
    return _ErrorState(
      message: message,
    );
  }

// ignore: unused_element
  _ImagePickedState imagePicked({@required File imageSource}) {
    return _ImagePickedState(
      imageSource: imageSource,
    );
  }

// ignore: unused_element
  _ShowResultState showResult({@required ImageResultModel imageResult}) {
    return _ShowResultState(
      imageResult: imageResult,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageProcessState = _$ImageProcessStateTearOff();

/// @nodoc
mixin _$ImageProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult imagePicked(File imageSource),
    @required TResult showResult(ImageResultModel imageResult),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult imagePicked(File imageSource),
    TResult showResult(ImageResultModel imageResult),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult imagePicked(_ImagePickedState value),
    @required TResult showResult(_ShowResultState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult imagePicked(_ImagePickedState value),
    TResult showResult(_ShowResultState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageProcessStateCopyWith<$Res> {
  factory $ImageProcessStateCopyWith(
          ImageProcessState value, $Res Function(ImageProcessState) then) =
      _$ImageProcessStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageProcessStateCopyWithImpl<$Res>
    implements $ImageProcessStateCopyWith<$Res> {
  _$ImageProcessStateCopyWithImpl(this._value, this._then);

  final ImageProcessState _value;
  // ignore: unused_field
  final $Res Function(ImageProcessState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$ImageProcessStateCopyWithImpl<$Res>
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
    return 'ImageProcessState.initial()';
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
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult imagePicked(File imageSource),
    @required TResult showResult(ImageResultModel imageResult),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult imagePicked(File imageSource),
    TResult showResult(ImageResultModel imageResult),
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
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult imagePicked(_ImagePickedState value),
    @required TResult showResult(_ShowResultState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult imagePicked(_ImagePickedState value),
    TResult showResult(_ShowResultState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ImageProcessState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res>
    extends _$ImageProcessStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(
      _LoadingState _value, $Res Function(_LoadingState) _then)
      : super(_value, (v) => _then(v as _LoadingState));

  @override
  _LoadingState get _value => super._value as _LoadingState;
}

/// @nodoc
class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'ImageProcessState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult imagePicked(File imageSource),
    @required TResult showResult(ImageResultModel imageResult),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult imagePicked(File imageSource),
    TResult showResult(ImageResultModel imageResult),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult imagePicked(_ImagePickedState value),
    @required TResult showResult(_ShowResultState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult imagePicked(_ImagePickedState value),
    TResult showResult(_ShowResultState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ImageProcessState {
  const factory _LoadingState() = _$_LoadingState;
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
    extends _$ImageProcessStateCopyWithImpl<$Res>
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
  const _$_ErrorState({this.message = 'Error'}) : assert(message != null);

  @JsonKey(defaultValue: 'Error')
  @override
  final String message;

  @override
  String toString() {
    return 'ImageProcessState.error(message: $message)';
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
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult imagePicked(File imageSource),
    @required TResult showResult(ImageResultModel imageResult),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult imagePicked(File imageSource),
    TResult showResult(ImageResultModel imageResult),
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
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult imagePicked(_ImagePickedState value),
    @required TResult showResult(_ShowResultState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult imagePicked(_ImagePickedState value),
    TResult showResult(_ShowResultState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ImageProcessState {
  const factory _ErrorState({String message}) = _$_ErrorState;

  String get message;
  _$ErrorStateCopyWith<_ErrorState> get copyWith;
}

/// @nodoc
abstract class _$ImagePickedStateCopyWith<$Res> {
  factory _$ImagePickedStateCopyWith(
          _ImagePickedState value, $Res Function(_ImagePickedState) then) =
      __$ImagePickedStateCopyWithImpl<$Res>;
  $Res call({File imageSource});
}

/// @nodoc
class __$ImagePickedStateCopyWithImpl<$Res>
    extends _$ImageProcessStateCopyWithImpl<$Res>
    implements _$ImagePickedStateCopyWith<$Res> {
  __$ImagePickedStateCopyWithImpl(
      _ImagePickedState _value, $Res Function(_ImagePickedState) _then)
      : super(_value, (v) => _then(v as _ImagePickedState));

  @override
  _ImagePickedState get _value => super._value as _ImagePickedState;

  @override
  $Res call({
    Object imageSource = freezed,
  }) {
    return _then(_ImagePickedState(
      imageSource:
          imageSource == freezed ? _value.imageSource : imageSource as File,
    ));
  }
}

/// @nodoc
class _$_ImagePickedState implements _ImagePickedState {
  const _$_ImagePickedState({@required this.imageSource})
      : assert(imageSource != null);

  @override
  final File imageSource;

  @override
  String toString() {
    return 'ImageProcessState.imagePicked(imageSource: $imageSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagePickedState &&
            (identical(other.imageSource, imageSource) ||
                const DeepCollectionEquality()
                    .equals(other.imageSource, imageSource)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageSource);

  @override
  _$ImagePickedStateCopyWith<_ImagePickedState> get copyWith =>
      __$ImagePickedStateCopyWithImpl<_ImagePickedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult imagePicked(File imageSource),
    @required TResult showResult(ImageResultModel imageResult),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return imagePicked(imageSource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult imagePicked(File imageSource),
    TResult showResult(ImageResultModel imageResult),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imagePicked != null) {
      return imagePicked(imageSource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult imagePicked(_ImagePickedState value),
    @required TResult showResult(_ShowResultState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return imagePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult imagePicked(_ImagePickedState value),
    TResult showResult(_ShowResultState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imagePicked != null) {
      return imagePicked(this);
    }
    return orElse();
  }
}

abstract class _ImagePickedState implements ImageProcessState {
  const factory _ImagePickedState({@required File imageSource}) =
      _$_ImagePickedState;

  File get imageSource;
  _$ImagePickedStateCopyWith<_ImagePickedState> get copyWith;
}

/// @nodoc
abstract class _$ShowResultStateCopyWith<$Res> {
  factory _$ShowResultStateCopyWith(
          _ShowResultState value, $Res Function(_ShowResultState) then) =
      __$ShowResultStateCopyWithImpl<$Res>;
  $Res call({ImageResultModel imageResult});
}

/// @nodoc
class __$ShowResultStateCopyWithImpl<$Res>
    extends _$ImageProcessStateCopyWithImpl<$Res>
    implements _$ShowResultStateCopyWith<$Res> {
  __$ShowResultStateCopyWithImpl(
      _ShowResultState _value, $Res Function(_ShowResultState) _then)
      : super(_value, (v) => _then(v as _ShowResultState));

  @override
  _ShowResultState get _value => super._value as _ShowResultState;

  @override
  $Res call({
    Object imageResult = freezed,
  }) {
    return _then(_ShowResultState(
      imageResult: imageResult == freezed
          ? _value.imageResult
          : imageResult as ImageResultModel,
    ));
  }
}

/// @nodoc
class _$_ShowResultState implements _ShowResultState {
  const _$_ShowResultState({@required this.imageResult})
      : assert(imageResult != null);

  @override
  final ImageResultModel imageResult;

  @override
  String toString() {
    return 'ImageProcessState.showResult(imageResult: $imageResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowResultState &&
            (identical(other.imageResult, imageResult) ||
                const DeepCollectionEquality()
                    .equals(other.imageResult, imageResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageResult);

  @override
  _$ShowResultStateCopyWith<_ShowResultState> get copyWith =>
      __$ShowResultStateCopyWithImpl<_ShowResultState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult imagePicked(File imageSource),
    @required TResult showResult(ImageResultModel imageResult),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return showResult(imageResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult imagePicked(File imageSource),
    TResult showResult(ImageResultModel imageResult),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showResult != null) {
      return showResult(imageResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult imagePicked(_ImagePickedState value),
    @required TResult showResult(_ShowResultState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return showResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult imagePicked(_ImagePickedState value),
    TResult showResult(_ShowResultState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showResult != null) {
      return showResult(this);
    }
    return orElse();
  }
}

abstract class _ShowResultState implements ImageProcessState {
  const factory _ShowResultState({@required ImageResultModel imageResult}) =
      _$_ShowResultState;

  ImageResultModel get imageResult;
  _$ShowResultStateCopyWith<_ShowResultState> get copyWith;
}
