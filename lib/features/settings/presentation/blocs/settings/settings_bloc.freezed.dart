// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  _InitializeEvent initialize() {
    return const _InitializeEvent();
  }

  _UpdateSettingsEvent updateSettings(
      {required UpdateSettingsParams newSettings}) {
    return _UpdateSettingsEvent(
      newSettings: newSettings,
    );
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(UpdateSettingsParams newSettings) updateSettings,
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(UpdateSettingsParams newSettings)? updateSettings,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeEvent value) initialize,
    required TResult Function(_UpdateSettingsEvent value) updateSettings,
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeEvent value)? initialize,
    TResult Function(_UpdateSettingsEvent value)? updateSettings,
    required TResult orElse(),
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(UpdateSettingsParams newSettings) updateSettings,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(UpdateSettingsParams newSettings)? updateSettings,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeEvent value) initialize,
    required TResult Function(_UpdateSettingsEvent value) updateSettings,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeEvent value)? initialize,
    TResult Function(_UpdateSettingsEvent value)? updateSettings,
    required TResult orElse(),
  }) {
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
abstract class _$UpdateSettingsEventCopyWith<$Res> {
  factory _$UpdateSettingsEventCopyWith(_UpdateSettingsEvent value,
          $Res Function(_UpdateSettingsEvent) then) =
      __$UpdateSettingsEventCopyWithImpl<$Res>;
  $Res call({UpdateSettingsParams newSettings});
}

/// @nodoc
class __$UpdateSettingsEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$UpdateSettingsEventCopyWith<$Res> {
  __$UpdateSettingsEventCopyWithImpl(
      _UpdateSettingsEvent _value, $Res Function(_UpdateSettingsEvent) _then)
      : super(_value, (v) => _then(v as _UpdateSettingsEvent));

  @override
  _UpdateSettingsEvent get _value => super._value as _UpdateSettingsEvent;

  @override
  $Res call({
    Object? newSettings = freezed,
  }) {
    return _then(_UpdateSettingsEvent(
      newSettings: newSettings == freezed
          ? _value.newSettings
          : newSettings as UpdateSettingsParams,
    ));
  }
}

/// @nodoc
class _$_UpdateSettingsEvent implements _UpdateSettingsEvent {
  const _$_UpdateSettingsEvent({required this.newSettings});

  @override
  final UpdateSettingsParams newSettings;

  @override
  String toString() {
    return 'SettingsEvent.updateSettings(newSettings: $newSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSettingsEvent &&
            (identical(other.newSettings, newSettings) ||
                const DeepCollectionEquality()
                    .equals(other.newSettings, newSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newSettings);

  @JsonKey(ignore: true)
  @override
  _$UpdateSettingsEventCopyWith<_UpdateSettingsEvent> get copyWith =>
      __$UpdateSettingsEventCopyWithImpl<_UpdateSettingsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(UpdateSettingsParams newSettings) updateSettings,
  }) {
    return updateSettings(newSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(UpdateSettingsParams newSettings)? updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(newSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeEvent value) initialize,
    required TResult Function(_UpdateSettingsEvent value) updateSettings,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeEvent value)? initialize,
    TResult Function(_UpdateSettingsEvent value)? updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(this);
    }
    return orElse();
  }
}

abstract class _UpdateSettingsEvent implements SettingsEvent {
  const factory _UpdateSettingsEvent(
      {required UpdateSettingsParams newSettings}) = _$_UpdateSettingsEvent;

  UpdateSettingsParams get newSettings;
  @JsonKey(ignore: true)
  _$UpdateSettingsEventCopyWith<_UpdateSettingsEvent> get copyWith;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _InitialState initial() {
    return const _InitialState();
  }

  _ErrorState error({String message = "error"}) {
    return _ErrorState(
      message: message,
    );
  }

  _ShowState show({required SettingsModel settingsModel}) {
    return _ShowState(
      settingsModel: settingsModel,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(SettingsModel settingsModel) show,
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(SettingsModel settingsModel)? show,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ShowState value) show,
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ShowState value)? show,
    required TResult orElse(),
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(SettingsModel settingsModel) show,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(SettingsModel settingsModel)? show,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ShowState value) show,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ShowState value)? show,
    required TResult orElse(),
  }) {
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
    Object? message = freezed,
  }) {
    return _then(_ErrorState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({this.message = "error"});

  @JsonKey(defaultValue: "error")
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

  @JsonKey(ignore: true)
  @override
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(SettingsModel settingsModel) show,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(SettingsModel settingsModel)? show,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ShowState value) show,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ShowState value)? show,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements SettingsState {
  const factory _ErrorState({String message}) = _$_ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorStateCopyWith<_ErrorState> get copyWith;
}

/// @nodoc
abstract class _$ShowStateCopyWith<$Res> {
  factory _$ShowStateCopyWith(
          _ShowState value, $Res Function(_ShowState) then) =
      __$ShowStateCopyWithImpl<$Res>;
  $Res call({SettingsModel settingsModel});
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
    Object? settingsModel = freezed,
  }) {
    return _then(_ShowState(
      settingsModel: settingsModel == freezed
          ? _value.settingsModel
          : settingsModel as SettingsModel,
    ));
  }
}

/// @nodoc
class _$_ShowState implements _ShowState {
  const _$_ShowState({required this.settingsModel});

  @override
  final SettingsModel settingsModel;

  @override
  String toString() {
    return 'SettingsState.show(settingsModel: $settingsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowState &&
            (identical(other.settingsModel, settingsModel) ||
                const DeepCollectionEquality()
                    .equals(other.settingsModel, settingsModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settingsModel);

  @JsonKey(ignore: true)
  @override
  _$ShowStateCopyWith<_ShowState> get copyWith =>
      __$ShowStateCopyWithImpl<_ShowState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(SettingsModel settingsModel) show,
  }) {
    return show(settingsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(SettingsModel settingsModel)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(settingsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ShowState value) show,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ShowState value)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _ShowState implements SettingsState {
  const factory _ShowState({required SettingsModel settingsModel}) =
      _$_ShowState;

  SettingsModel get settingsModel;
  @JsonKey(ignore: true)
  _$ShowStateCopyWith<_ShowState> get copyWith;
}
