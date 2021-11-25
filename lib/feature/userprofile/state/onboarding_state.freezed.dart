// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardingStateTearOff {
  const _$OnboardingStateTearOff();

  _Present present(int page) {
    return _Present(
      page,
    );
  }

  _CreateFork createFork(int page) {
    return _CreateFork(
      page,
    );
  }

  _CreateProfile createProfile(int page) {
    return _CreateProfile(
      page,
    );
  }

  _Finalized finalized() {
    return const _Finalized();
  }
}

/// @nodoc
const $OnboardingState = _$OnboardingStateTearOff();

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) present,
    required TResult Function(int page) createFork,
    required TResult Function(int page) createProfile,
    required TResult Function() finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_CreateFork value) createFork,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_Finalized value) finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;
}

/// @nodoc
abstract class _$PresentCopyWith<$Res> {
  factory _$PresentCopyWith(_Present value, $Res Function(_Present) then) =
      __$PresentCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$PresentCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$PresentCopyWith<$Res> {
  __$PresentCopyWithImpl(_Present _value, $Res Function(_Present) _then)
      : super(_value, (v) => _then(v as _Present));

  @override
  _Present get _value => super._value as _Present;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_Present(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Present implements _Present {
  const _$_Present(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'OnboardingState.present(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Present &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  _$PresentCopyWith<_Present> get copyWith =>
      __$PresentCopyWithImpl<_Present>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) present,
    required TResult Function(int page) createFork,
    required TResult Function(int page) createProfile,
    required TResult Function() finalized,
  }) {
    return present(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
  }) {
    return present?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_CreateFork value) createFork,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_Finalized value) finalized,
  }) {
    return present(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
  }) {
    return present?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(this);
    }
    return orElse();
  }
}

abstract class _Present implements OnboardingState {
  const factory _Present(int page) = _$_Present;

  int get page;
  @JsonKey(ignore: true)
  _$PresentCopyWith<_Present> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateForkCopyWith<$Res> {
  factory _$CreateForkCopyWith(
          _CreateFork value, $Res Function(_CreateFork) then) =
      __$CreateForkCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$CreateForkCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$CreateForkCopyWith<$Res> {
  __$CreateForkCopyWithImpl(
      _CreateFork _value, $Res Function(_CreateFork) _then)
      : super(_value, (v) => _then(v as _CreateFork));

  @override
  _CreateFork get _value => super._value as _CreateFork;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_CreateFork(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateFork implements _CreateFork {
  const _$_CreateFork(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'OnboardingState.createFork(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateFork &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  _$CreateForkCopyWith<_CreateFork> get copyWith =>
      __$CreateForkCopyWithImpl<_CreateFork>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) present,
    required TResult Function(int page) createFork,
    required TResult Function(int page) createProfile,
    required TResult Function() finalized,
  }) {
    return createFork(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
  }) {
    return createFork?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
    required TResult orElse(),
  }) {
    if (createFork != null) {
      return createFork(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_CreateFork value) createFork,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_Finalized value) finalized,
  }) {
    return createFork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
  }) {
    return createFork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) {
    if (createFork != null) {
      return createFork(this);
    }
    return orElse();
  }
}

abstract class _CreateFork implements OnboardingState {
  const factory _CreateFork(int page) = _$_CreateFork;

  int get page;
  @JsonKey(ignore: true)
  _$CreateForkCopyWith<_CreateFork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateProfileCopyWith<$Res> {
  factory _$CreateProfileCopyWith(
          _CreateProfile value, $Res Function(_CreateProfile) then) =
      __$CreateProfileCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$CreateProfileCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$CreateProfileCopyWith<$Res> {
  __$CreateProfileCopyWithImpl(
      _CreateProfile _value, $Res Function(_CreateProfile) _then)
      : super(_value, (v) => _then(v as _CreateProfile));

  @override
  _CreateProfile get _value => super._value as _CreateProfile;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_CreateProfile(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateProfile implements _CreateProfile {
  const _$_CreateProfile(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'OnboardingState.createProfile(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProfile &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  _$CreateProfileCopyWith<_CreateProfile> get copyWith =>
      __$CreateProfileCopyWithImpl<_CreateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) present,
    required TResult Function(int page) createFork,
    required TResult Function(int page) createProfile,
    required TResult Function() finalized,
  }) {
    return createProfile(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
  }) {
    return createProfile?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_CreateFork value) createFork,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_Finalized value) finalized,
  }) {
    return createProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
  }) {
    return createProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(this);
    }
    return orElse();
  }
}

abstract class _CreateProfile implements OnboardingState {
  const factory _CreateProfile(int page) = _$_CreateProfile;

  int get page;
  @JsonKey(ignore: true)
  _$CreateProfileCopyWith<_CreateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinalizedCopyWith<$Res> {
  factory _$FinalizedCopyWith(
          _Finalized value, $Res Function(_Finalized) then) =
      __$FinalizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FinalizedCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$FinalizedCopyWith<$Res> {
  __$FinalizedCopyWithImpl(_Finalized _value, $Res Function(_Finalized) _then)
      : super(_value, (v) => _then(v as _Finalized));

  @override
  _Finalized get _value => super._value as _Finalized;
}

/// @nodoc

class _$_Finalized implements _Finalized {
  const _$_Finalized();

  @override
  String toString() {
    return 'OnboardingState.finalized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Finalized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) present,
    required TResult Function(int page) createFork,
    required TResult Function(int page) createProfile,
    required TResult Function() finalized,
  }) {
    return finalized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
  }) {
    return finalized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? present,
    TResult Function(int page)? createFork,
    TResult Function(int page)? createProfile,
    TResult Function()? finalized,
    required TResult orElse(),
  }) {
    if (finalized != null) {
      return finalized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_CreateFork value) createFork,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_Finalized value) finalized,
  }) {
    return finalized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
  }) {
    return finalized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_CreateFork value)? createFork,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_Finalized value)? finalized,
    required TResult orElse(),
  }) {
    if (finalized != null) {
      return finalized(this);
    }
    return orElse();
  }
}

abstract class _Finalized implements OnboardingState {
  const factory _Finalized() = _$_Finalized;
}
