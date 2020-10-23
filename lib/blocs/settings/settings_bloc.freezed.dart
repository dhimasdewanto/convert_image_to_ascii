// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

// ignore: unused_element
  _InitializeEvent initialize() {
    return const _InitializeEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$InitializeEventCopyWith<$Res> {
  factory _$InitializeEventCopyWith(
          _InitializeEvent value, $Res Function(_InitializeEvent) then) =
      __$InitializeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$InitializeEventCopyWith<$Res> {
  __$InitializeEventCopyWithImpl(
      _InitializeEvent _value, $Res Function(_InitializeEvent) _then)
      : super(_value, (v) => _then(v as _InitializeEvent));

  @override
  _InitializeEvent get _value => super._value as _InitializeEvent;
}

/// @nodoc
class _$_InitializeEvent implements _InitializeEvent {
  const _$_InitializeEvent();

  @override
  String toString() {
    return 'SettingsEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitializeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
  }) {
    assert(initialize != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeEvent value),
  }) {
    assert(initialize != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeEvent implements SettingsEvent {
  const factory _InitializeEvent() = _$_InitializeEvent;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _ErrorState error({String message = "Error"}) {
    return _ErrorState(
      message: message,
    );
  }

// ignore: unused_element
  _ShowState show(
      {@required List<String> listCharacters,
      @required List<int> listColorValues}) {
    return _ShowState(
      listCharacters: listCharacters,
      listColorValues: listColorValues,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result error(String message),
    @required
        Result show(List<String> listCharacters, List<int> listColorValues),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String message),
    Result show(List<String> listCharacters, List<int> listColorValues),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result error(_ErrorState value),
    Result show(_ShowState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
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
    return 'SettingsState.initial()';
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
    @required Result error(String message),
    @required
        Result show(List<String> listCharacters, List<int> listColorValues),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(show != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String message),
    Result show(List<String> listCharacters, List<int> listColorValues),
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
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(show != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
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

abstract class _InitialState implements SettingsState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
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
    return 'SettingsState.error(message: $message)';
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
    @required Result error(String message),
    @required
        Result show(List<String> listCharacters, List<int> listColorValues),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(show != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String message),
    Result show(List<String> listCharacters, List<int> listColorValues),
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
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(show != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
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

abstract class _ErrorState implements SettingsState {
  const factory _ErrorState({String message}) = _$_ErrorState;

  String get message;
  _$ErrorStateCopyWith<_ErrorState> get copyWith;
}

/// @nodoc
abstract class _$ShowStateCopyWith<$Res> {
  factory _$ShowStateCopyWith(
          _ShowState value, $Res Function(_ShowState) then) =
      __$ShowStateCopyWithImpl<$Res>;
  $Res call({List<String> listCharacters, List<int> listColorValues});
}

/// @nodoc
class __$ShowStateCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$ShowStateCopyWith<$Res> {
  __$ShowStateCopyWithImpl(_ShowState _value, $Res Function(_ShowState) _then)
      : super(_value, (v) => _then(v as _ShowState));

  @override
  _ShowState get _value => super._value as _ShowState;

  @override
  $Res call({
    Object listCharacters = freezed,
    Object listColorValues = freezed,
  }) {
    return _then(_ShowState(
      listCharacters: listCharacters == freezed
          ? _value.listCharacters
          : listCharacters as List<String>,
      listColorValues: listColorValues == freezed
          ? _value.listColorValues
          : listColorValues as List<int>,
    ));
  }
}

/// @nodoc
class _$_ShowState implements _ShowState {
  const _$_ShowState(
      {@required this.listCharacters, @required this.listColorValues})
      : assert(listCharacters != null),
        assert(listColorValues != null);

  @override
  final List<String> listCharacters;
  @override
  final List<int> listColorValues;

  @override
  String toString() {
    return 'SettingsState.show(listCharacters: $listCharacters, listColorValues: $listColorValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowState &&
            (identical(other.listCharacters, listCharacters) ||
                const DeepCollectionEquality()
                    .equals(other.listCharacters, listCharacters)) &&
            (identical(other.listColorValues, listColorValues) ||
                const DeepCollectionEquality()
                    .equals(other.listColorValues, listColorValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listCharacters) ^
      const DeepCollectionEquality().hash(listColorValues);

  @override
  _$ShowStateCopyWith<_ShowState> get copyWith =>
      __$ShowStateCopyWithImpl<_ShowState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result error(String message),
    @required
        Result show(List<String> listCharacters, List<int> listColorValues),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(show != null);
    return show(listCharacters, listColorValues);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String message),
    Result show(List<String> listCharacters, List<int> listColorValues),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(listCharacters, listColorValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result error(_ErrorState value),
    @required Result show(_ShowState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(show != null);
    return show(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
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

abstract class _ShowState implements SettingsState {
  const factory _ShowState(
      {@required List<String> listCharacters,
      @required List<int> listColorValues}) = _$_ShowState;

  List<String> get listCharacters;
  List<int> get listColorValues;
  _$ShowStateCopyWith<_ShowState> get copyWith;
}
