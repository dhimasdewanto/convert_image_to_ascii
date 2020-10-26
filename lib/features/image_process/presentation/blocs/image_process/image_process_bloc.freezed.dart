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
  _PickImageEvent pickImage(
      {@required List<int> listColorValues,
      @required List<String> listCharacters}) {
    return _PickImageEvent(
      listColorValues: listColorValues,
      listCharacters: listCharacters,
    );
  }

// ignore: unused_element
  _ProcessImageEvent processImage(
      {@required List<int> listColorValues,
      @required List<String> listCharacters}) {
    return _ProcessImageEvent(
      listColorValues: listColorValues,
      listCharacters: listCharacters,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageProcessEvent = _$ImageProcessEventTearOff();

/// @nodoc
mixin _$ImageProcessEvent {
  List<int> get listColorValues;
  List<String> get listCharacters;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result pickImage(
            List<int> listColorValues, List<String> listCharacters),
    @required
        Result processImage(
            List<int> listColorValues, List<String> listCharacters),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pickImage(List<int> listColorValues, List<String> listCharacters),
    Result processImage(List<int> listColorValues, List<String> listCharacters),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pickImage(_PickImageEvent value),
    @required Result processImage(_ProcessImageEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pickImage(_PickImageEvent value),
    Result processImage(_ProcessImageEvent value),
    @required Result orElse(),
  });

  $ImageProcessEventCopyWith<ImageProcessEvent> get copyWith;
}

/// @nodoc
abstract class $ImageProcessEventCopyWith<$Res> {
  factory $ImageProcessEventCopyWith(
          ImageProcessEvent value, $Res Function(ImageProcessEvent) then) =
      _$ImageProcessEventCopyWithImpl<$Res>;
  $Res call({List<int> listColorValues, List<String> listCharacters});
}

/// @nodoc
class _$ImageProcessEventCopyWithImpl<$Res>
    implements $ImageProcessEventCopyWith<$Res> {
  _$ImageProcessEventCopyWithImpl(this._value, this._then);

  final ImageProcessEvent _value;
  // ignore: unused_field
  final $Res Function(ImageProcessEvent) _then;

  @override
  $Res call({
    Object listColorValues = freezed,
    Object listCharacters = freezed,
  }) {
    return _then(_value.copyWith(
      listColorValues: listColorValues == freezed
          ? _value.listColorValues
          : listColorValues as List<int>,
      listCharacters: listCharacters == freezed
          ? _value.listCharacters
          : listCharacters as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PickImageEventCopyWith<$Res>
    implements $ImageProcessEventCopyWith<$Res> {
  factory _$PickImageEventCopyWith(
          _PickImageEvent value, $Res Function(_PickImageEvent) then) =
      __$PickImageEventCopyWithImpl<$Res>;
  @override
  $Res call({List<int> listColorValues, List<String> listCharacters});
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

  @override
  $Res call({
    Object listColorValues = freezed,
    Object listCharacters = freezed,
  }) {
    return _then(_PickImageEvent(
      listColorValues: listColorValues == freezed
          ? _value.listColorValues
          : listColorValues as List<int>,
      listCharacters: listCharacters == freezed
          ? _value.listCharacters
          : listCharacters as List<String>,
    ));
  }
}

/// @nodoc
class _$_PickImageEvent implements _PickImageEvent {
  const _$_PickImageEvent(
      {@required this.listColorValues, @required this.listCharacters})
      : assert(listColorValues != null),
        assert(listCharacters != null);

  @override
  final List<int> listColorValues;
  @override
  final List<String> listCharacters;

  @override
  String toString() {
    return 'ImageProcessEvent.pickImage(listColorValues: $listColorValues, listCharacters: $listCharacters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PickImageEvent &&
            (identical(other.listColorValues, listColorValues) ||
                const DeepCollectionEquality()
                    .equals(other.listColorValues, listColorValues)) &&
            (identical(other.listCharacters, listCharacters) ||
                const DeepCollectionEquality()
                    .equals(other.listCharacters, listCharacters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listColorValues) ^
      const DeepCollectionEquality().hash(listCharacters);

  @override
  _$PickImageEventCopyWith<_PickImageEvent> get copyWith =>
      __$PickImageEventCopyWithImpl<_PickImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result pickImage(
            List<int> listColorValues, List<String> listCharacters),
    @required
        Result processImage(
            List<int> listColorValues, List<String> listCharacters),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return pickImage(listColorValues, listCharacters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pickImage(List<int> listColorValues, List<String> listCharacters),
    Result processImage(List<int> listColorValues, List<String> listCharacters),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickImage != null) {
      return pickImage(listColorValues, listCharacters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pickImage(_PickImageEvent value),
    @required Result processImage(_ProcessImageEvent value),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pickImage(_PickImageEvent value),
    Result processImage(_ProcessImageEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImageEvent implements ImageProcessEvent {
  const factory _PickImageEvent(
      {@required List<int> listColorValues,
      @required List<String> listCharacters}) = _$_PickImageEvent;

  @override
  List<int> get listColorValues;
  @override
  List<String> get listCharacters;
  @override
  _$PickImageEventCopyWith<_PickImageEvent> get copyWith;
}

/// @nodoc
abstract class _$ProcessImageEventCopyWith<$Res>
    implements $ImageProcessEventCopyWith<$Res> {
  factory _$ProcessImageEventCopyWith(
          _ProcessImageEvent value, $Res Function(_ProcessImageEvent) then) =
      __$ProcessImageEventCopyWithImpl<$Res>;
  @override
  $Res call({List<int> listColorValues, List<String> listCharacters});
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

  @override
  $Res call({
    Object listColorValues = freezed,
    Object listCharacters = freezed,
  }) {
    return _then(_ProcessImageEvent(
      listColorValues: listColorValues == freezed
          ? _value.listColorValues
          : listColorValues as List<int>,
      listCharacters: listCharacters == freezed
          ? _value.listCharacters
          : listCharacters as List<String>,
    ));
  }
}

/// @nodoc
class _$_ProcessImageEvent implements _ProcessImageEvent {
  const _$_ProcessImageEvent(
      {@required this.listColorValues, @required this.listCharacters})
      : assert(listColorValues != null),
        assert(listCharacters != null);

  @override
  final List<int> listColorValues;
  @override
  final List<String> listCharacters;

  @override
  String toString() {
    return 'ImageProcessEvent.processImage(listColorValues: $listColorValues, listCharacters: $listCharacters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProcessImageEvent &&
            (identical(other.listColorValues, listColorValues) ||
                const DeepCollectionEquality()
                    .equals(other.listColorValues, listColorValues)) &&
            (identical(other.listCharacters, listCharacters) ||
                const DeepCollectionEquality()
                    .equals(other.listCharacters, listCharacters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listColorValues) ^
      const DeepCollectionEquality().hash(listCharacters);

  @override
  _$ProcessImageEventCopyWith<_ProcessImageEvent> get copyWith =>
      __$ProcessImageEventCopyWithImpl<_ProcessImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result pickImage(
            List<int> listColorValues, List<String> listCharacters),
    @required
        Result processImage(
            List<int> listColorValues, List<String> listCharacters),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return processImage(listColorValues, listCharacters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pickImage(List<int> listColorValues, List<String> listCharacters),
    Result processImage(List<int> listColorValues, List<String> listCharacters),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (processImage != null) {
      return processImage(listColorValues, listCharacters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pickImage(_PickImageEvent value),
    @required Result processImage(_ProcessImageEvent value),
  }) {
    assert(pickImage != null);
    assert(processImage != null);
    return processImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pickImage(_PickImageEvent value),
    Result processImage(_ProcessImageEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (processImage != null) {
      return processImage(this);
    }
    return orElse();
  }
}

abstract class _ProcessImageEvent implements ImageProcessEvent {
  const factory _ProcessImageEvent(
      {@required List<int> listColorValues,
      @required List<String> listCharacters}) = _$_ProcessImageEvent;

  @override
  List<int> get listColorValues;
  @override
  List<String> get listCharacters;
  @override
  _$ProcessImageEventCopyWith<_ProcessImageEvent> get copyWith;
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
  _ErrorState error({String message = "Error"}) {
    return _ErrorState(
      message: message,
    );
  }

// ignore: unused_element
  _ImagePickedState imagePicked({@required File imageFile}) {
    return _ImagePickedState(
      imageFile: imageFile,
    );
  }

// ignore: unused_element
  _ShowResultState showResult(
      {@required File imageFile, @required StringBuffer textBuffer}) {
    return _ShowResultState(
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
    @required Result imagePicked(File imageFile),
    @required Result showResult(File imageFile, StringBuffer textBuffer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result imagePicked(File imageFile),
    Result showResult(File imageFile, StringBuffer textBuffer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result imagePicked(_ImagePickedState value),
    @required Result showResult(_ShowResultState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result imagePicked(_ImagePickedState value),
    Result showResult(_ShowResultState value),
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
    @required Result imagePicked(File imageFile),
    @required Result showResult(File imageFile, StringBuffer textBuffer),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result imagePicked(File imageFile),
    Result showResult(File imageFile, StringBuffer textBuffer),
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
    @required Result imagePicked(_ImagePickedState value),
    @required Result showResult(_ShowResultState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result imagePicked(_ImagePickedState value),
    Result showResult(_ShowResultState value),
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
    @required Result imagePicked(File imageFile),
    @required Result showResult(File imageFile, StringBuffer textBuffer),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result imagePicked(File imageFile),
    Result showResult(File imageFile, StringBuffer textBuffer),
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
    @required Result imagePicked(_ImagePickedState value),
    @required Result showResult(_ShowResultState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result imagePicked(_ImagePickedState value),
    Result showResult(_ShowResultState value),
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
  const _$_ErrorState({this.message = "Error"}) : assert(message != null);

  @JsonKey(defaultValue: "Error")
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
    @required Result imagePicked(File imageFile),
    @required Result showResult(File imageFile, StringBuffer textBuffer),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result imagePicked(File imageFile),
    Result showResult(File imageFile, StringBuffer textBuffer),
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
    @required Result imagePicked(_ImagePickedState value),
    @required Result showResult(_ShowResultState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result imagePicked(_ImagePickedState value),
    Result showResult(_ShowResultState value),
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
abstract class _$ImagePickedStateCopyWith<$Res> {
  factory _$ImagePickedStateCopyWith(
          _ImagePickedState value, $Res Function(_ImagePickedState) then) =
      __$ImagePickedStateCopyWithImpl<$Res>;
  $Res call({File imageFile});
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
    Object imageFile = freezed,
  }) {
    return _then(_ImagePickedState(
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

/// @nodoc
class _$_ImagePickedState implements _ImagePickedState {
  const _$_ImagePickedState({@required this.imageFile})
      : assert(imageFile != null);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'ImageProcessState.imagePicked(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagePickedState &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageFile);

  @override
  _$ImagePickedStateCopyWith<_ImagePickedState> get copyWith =>
      __$ImagePickedStateCopyWithImpl<_ImagePickedState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(String message),
    @required Result imagePicked(File imageFile),
    @required Result showResult(File imageFile, StringBuffer textBuffer),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return imagePicked(imageFile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result imagePicked(File imageFile),
    Result showResult(File imageFile, StringBuffer textBuffer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagePicked != null) {
      return imagePicked(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result imagePicked(_ImagePickedState value),
    @required Result showResult(_ShowResultState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result imagePicked(_ImagePickedState value),
    Result showResult(_ShowResultState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagePicked != null) {
      return imagePicked(this);
    }
    return orElse();
  }
}

abstract class _ImagePickedState implements ImageProcessState {
  const factory _ImagePickedState({@required File imageFile}) =
      _$_ImagePickedState;

  File get imageFile;
  _$ImagePickedStateCopyWith<_ImagePickedState> get copyWith;
}

/// @nodoc
abstract class _$ShowResultStateCopyWith<$Res> {
  factory _$ShowResultStateCopyWith(
          _ShowResultState value, $Res Function(_ShowResultState) then) =
      __$ShowResultStateCopyWithImpl<$Res>;
  $Res call({File imageFile, StringBuffer textBuffer});
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
    Object imageFile = freezed,
    Object textBuffer = freezed,
  }) {
    return _then(_ShowResultState(
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
      textBuffer: textBuffer == freezed
          ? _value.textBuffer
          : textBuffer as StringBuffer,
    ));
  }
}

/// @nodoc
class _$_ShowResultState implements _ShowResultState {
  const _$_ShowResultState(
      {@required this.imageFile, @required this.textBuffer})
      : assert(imageFile != null),
        assert(textBuffer != null);

  @override
  final File imageFile;
  @override
  final StringBuffer textBuffer;

  @override
  String toString() {
    return 'ImageProcessState.showResult(imageFile: $imageFile, textBuffer: $textBuffer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowResultState &&
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
  _$ShowResultStateCopyWith<_ShowResultState> get copyWith =>
      __$ShowResultStateCopyWithImpl<_ShowResultState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(String message),
    @required Result imagePicked(File imageFile),
    @required Result showResult(File imageFile, StringBuffer textBuffer),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(imagePicked != null);
    assert(showResult != null);
    return showResult(imageFile, textBuffer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(String message),
    Result imagePicked(File imageFile),
    Result showResult(File imageFile, StringBuffer textBuffer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showResult != null) {
      return showResult(imageFile, textBuffer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result imagePicked(_ImagePickedState value),
    @required Result showResult(_ShowResultState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result imagePicked(_ImagePickedState value),
    Result showResult(_ShowResultState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showResult != null) {
      return showResult(this);
    }
    return orElse();
  }
}

abstract class _ShowResultState implements ImageProcessState {
  const factory _ShowResultState(
      {@required File imageFile,
      @required StringBuffer textBuffer}) = _$_ShowResultState;

  File get imageFile;
  StringBuffer get textBuffer;
  _$ShowResultStateCopyWith<_ShowResultState> get copyWith;
}
