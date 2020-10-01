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
  _PickAndProcessImageEvent pickAndProcessImage() {
    return const _PickAndProcessImageEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $ImageProcessEvent = _$ImageProcessEventTearOff();

/// @nodoc
mixin _$ImageProcessEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pickAndProcessImage(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pickAndProcessImage(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pickAndProcessImage(_PickAndProcessImageEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pickAndProcessImage(_PickAndProcessImageEvent value),
    @required Result orElse(),
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
abstract class _$PickAndProcessImageEventCopyWith<$Res> {
  factory _$PickAndProcessImageEventCopyWith(_PickAndProcessImageEvent value,
          $Res Function(_PickAndProcessImageEvent) then) =
      __$PickAndProcessImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$PickAndProcessImageEventCopyWithImpl<$Res>
    extends _$ImageProcessEventCopyWithImpl<$Res>
    implements _$PickAndProcessImageEventCopyWith<$Res> {
  __$PickAndProcessImageEventCopyWithImpl(_PickAndProcessImageEvent _value,
      $Res Function(_PickAndProcessImageEvent) _then)
      : super(_value, (v) => _then(v as _PickAndProcessImageEvent));

  @override
  _PickAndProcessImageEvent get _value =>
      super._value as _PickAndProcessImageEvent;
}

/// @nodoc
class _$_PickAndProcessImageEvent implements _PickAndProcessImageEvent {
  const _$_PickAndProcessImageEvent();

  @override
  String toString() {
    return 'ImageProcessEvent.pickAndProcessImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PickAndProcessImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pickAndProcessImage(),
  }) {
    assert(pickAndProcessImage != null);
    return pickAndProcessImage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pickAndProcessImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickAndProcessImage != null) {
      return pickAndProcessImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pickAndProcessImage(_PickAndProcessImageEvent value),
  }) {
    assert(pickAndProcessImage != null);
    return pickAndProcessImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pickAndProcessImage(_PickAndProcessImageEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickAndProcessImage != null) {
      return pickAndProcessImage(this);
    }
    return orElse();
  }
}

abstract class _PickAndProcessImageEvent implements ImageProcessEvent {
  const factory _PickAndProcessImageEvent() = _$_PickAndProcessImageEvent;
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
  _ShowState show(
      {@required File imageFile, @required StringBuffer textBuffer}) {
    return _ShowState(
      imageFile: imageFile,
      textBuffer: textBuffer,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageProcessState = _$ImageProcessStateTearOff();

/// @nodoc
mixin _$ImageProcessState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(String message),
    @required Result show(File imageFile, StringBuffer textBuffer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result show(File imageFile, StringBuffer textBuffer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result show(_ShowState value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(String message),
    @required Result show(File imageFile, StringBuffer textBuffer),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result show(File imageFile, StringBuffer textBuffer),
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
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result show(_ShowState value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(String message),
    @required Result show(File imageFile, StringBuffer textBuffer),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result show(File imageFile, StringBuffer textBuffer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result show(_ShowState value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(String message),
    @required Result show(File imageFile, StringBuffer textBuffer),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result show(File imageFile, StringBuffer textBuffer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result show(_ShowState value),
    @required Result orElse(),
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
abstract class _$ShowStateCopyWith<$Res> {
  factory _$ShowStateCopyWith(
          _ShowState value, $Res Function(_ShowState) then) =
      __$ShowStateCopyWithImpl<$Res>;
  $Res call({File imageFile, StringBuffer textBuffer});
}

/// @nodoc
class __$ShowStateCopyWithImpl<$Res>
    extends _$ImageProcessStateCopyWithImpl<$Res>
    implements _$ShowStateCopyWith<$Res> {
  __$ShowStateCopyWithImpl(_ShowState _value, $Res Function(_ShowState) _then)
      : super(_value, (v) => _then(v as _ShowState));

  @override
  _ShowState get _value => super._value as _ShowState;

  @override
  $Res call({
    Object imageFile = freezed,
    Object textBuffer = freezed,
  }) {
    return _then(_ShowState(
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
      textBuffer: textBuffer == freezed
          ? _value.textBuffer
          : textBuffer as StringBuffer,
    ));
  }
}

/// @nodoc
class _$_ShowState implements _ShowState {
  const _$_ShowState({@required this.imageFile, @required this.textBuffer})
      : assert(imageFile != null),
        assert(textBuffer != null);

  @override
  final File imageFile;
  @override
  final StringBuffer textBuffer;

  @override
  String toString() {
    return 'ImageProcessState.show(imageFile: $imageFile, textBuffer: $textBuffer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowState &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.textBuffer, textBuffer) ||
                const DeepCollectionEquality()
                    .equals(other.textBuffer, textBuffer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(textBuffer);

  @override
  _$ShowStateCopyWith<_ShowState> get copyWith =>
      __$ShowStateCopyWithImpl<_ShowState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(String message),
    @required Result show(File imageFile, StringBuffer textBuffer),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return show(imageFile, textBuffer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result show(File imageFile, StringBuffer textBuffer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(imageFile, textBuffer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(show != null);
    return show(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result show(_ShowState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _ShowState implements ImageProcessState {
  const factory _ShowState(
      {@required File imageFile,
      @required StringBuffer textBuffer}) = _$_ShowState;

  File get imageFile;
  StringBuffer get textBuffer;
  _$ShowStateCopyWith<_ShowState> get copyWith;
}
