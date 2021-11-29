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

  _Loading loading(String? mnemonic) {
    return _Loading(
      mnemonic,
    );
  }

  _Finalized finalized(ETHAccount ethAccount) {
    return _Finalized(
      ethAccount,
    );
  }
}

/// @nodoc
const $ProfileCreationState = _$ProfileCreationStateTearOff();

/// @nodoc
mixin _$ProfileCreationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) loading,
    required TResult Function(ETHAccount ethAccount) finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? mnemonic)? loading,
    TResult Function(ETHAccount ethAccount)? finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? loading,
    TResult Function(ETHAccount ethAccount)? finalized,
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
  $Res call({String? mnemonic});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ProfileCreationStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? mnemonic = freezed,
  }) {
    return _then(_Loading(
      mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.mnemonic);

  @override
  final String? mnemonic;

  @override
  String toString() {
    return 'ProfileCreationState.loading(mnemonic: $mnemonic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mnemonic);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) loading,
    required TResult Function(ETHAccount ethAccount) finalized,
  }) {
    return loading(mnemonic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? mnemonic)? loading,
    TResult Function(ETHAccount ethAccount)? finalized,
  }) {
    return loading?.call(mnemonic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? loading,
    TResult Function(ETHAccount ethAccount)? finalized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(mnemonic);
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
  const factory _Loading(String? mnemonic) = _$_Loading;

  String? get mnemonic;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinalizedCopyWith<$Res> {
  factory _$FinalizedCopyWith(
          _Finalized value, $Res Function(_Finalized) then) =
      __$FinalizedCopyWithImpl<$Res>;
  $Res call({ETHAccount ethAccount});
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
    Object? ethAccount = freezed,
  }) {
    return _then(_Finalized(
      ethAccount == freezed
          ? _value.ethAccount
          : ethAccount // ignore: cast_nullable_to_non_nullable
              as ETHAccount,
    ));
  }
}

/// @nodoc

class _$_Finalized implements _Finalized {
  const _$_Finalized(this.ethAccount);

  @override
  final ETHAccount ethAccount;

  @override
  String toString() {
    return 'ProfileCreationState.finalized(ethAccount: $ethAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Finalized &&
            (identical(other.ethAccount, ethAccount) ||
                other.ethAccount == ethAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ethAccount);

  @JsonKey(ignore: true)
  @override
  _$FinalizedCopyWith<_Finalized> get copyWith =>
      __$FinalizedCopyWithImpl<_Finalized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) loading,
    required TResult Function(ETHAccount ethAccount) finalized,
  }) {
    return finalized(ethAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? mnemonic)? loading,
    TResult Function(ETHAccount ethAccount)? finalized,
  }) {
    return finalized?.call(ethAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? loading,
    TResult Function(ETHAccount ethAccount)? finalized,
    required TResult orElse(),
  }) {
    if (finalized != null) {
      return finalized(ethAccount);
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
  const factory _Finalized(ETHAccount ethAccount) = _$_Finalized;

  ETHAccount get ethAccount;
  @JsonKey(ignore: true)
  _$FinalizedCopyWith<_Finalized> get copyWith =>
      throw _privateConstructorUsedError;
}
