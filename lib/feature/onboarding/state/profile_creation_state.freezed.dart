// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_creation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileCreationStateTearOff {
  const _$ProfileCreationStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Finalized finalized(String prvKey) {
    return _Finalized(
      prvKey,
    );
  }
}

/// @nodoc
const $ProfileCreationState = _$ProfileCreationStateTearOff();

/// @nodoc
mixin _$ProfileCreationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String prvKey) finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String prvKey)? finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String prvKey)? finalized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Finalized value) finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Finalized value)? finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCreationStateCopyWith<$Res> {
  factory $ProfileCreationStateCopyWith(ProfileCreationState value,
          $Res Function(ProfileCreationState) then) =
      _$ProfileCreationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileCreationStateCopyWithImpl<$Res>
    implements $ProfileCreationStateCopyWith<$Res> {
  _$ProfileCreationStateCopyWithImpl(this._value, this._then);

  final ProfileCreationState _value;
  // ignore: unused_field
  final $Res Function(ProfileCreationState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ProfileCreationStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProfileCreationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String prvKey) finalized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String prvKey)? finalized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String prvKey)? finalized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Finalized value) finalized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Finalized value)? finalized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileCreationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FinalizedCopyWith<$Res> {
  factory _$FinalizedCopyWith(
          _Finalized value, $Res Function(_Finalized) then) =
      __$FinalizedCopyWithImpl<$Res>;
  $Res call({String prvKey});
}

/// @nodoc
class __$FinalizedCopyWithImpl<$Res>
    extends _$ProfileCreationStateCopyWithImpl<$Res>
    implements _$FinalizedCopyWith<$Res> {
  __$FinalizedCopyWithImpl(_Finalized _value, $Res Function(_Finalized) _then)
      : super(_value, (v) => _then(v as _Finalized));

  @override
  _Finalized get _value => super._value as _Finalized;

  @override
  $Res call({
    Object? prvKey = freezed,
  }) {
    return _then(_Finalized(
      prvKey == freezed
          ? _value.prvKey
          : prvKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Finalized implements _Finalized {
  const _$_Finalized(this.prvKey);

  @override
  final String prvKey;

  @override
  String toString() {
    return 'ProfileCreationState.finalized(prvKey: $prvKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Finalized &&
            (identical(other.prvKey, prvKey) || other.prvKey == prvKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prvKey);

  @JsonKey(ignore: true)
  @override
  _$FinalizedCopyWith<_Finalized> get copyWith =>
      __$FinalizedCopyWithImpl<_Finalized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String prvKey) finalized,
  }) {
    return finalized(prvKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String prvKey)? finalized,
  }) {
    return finalized?.call(prvKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String prvKey)? finalized,
    required TResult orElse(),
  }) {
    if (finalized != null) {
      return finalized(prvKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Finalized value) finalized,
  }) {
    return finalized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Finalized value)? finalized,
  }) {
    return finalized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) {
    if (finalized != null) {
      return finalized(this);
    }
    return orElse();
  }
}

abstract class _Finalized implements ProfileCreationState {
  const factory _Finalized(String prvKey) = _$_Finalized;

  String get prvKey;
  @JsonKey(ignore: true)
  _$FinalizedCopyWith<_Finalized> get copyWith =>
      throw _privateConstructorUsedError;
}
