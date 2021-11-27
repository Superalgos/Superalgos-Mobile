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

  _Initial initial(int page) {
    return _Initial(
      page,
    );
  }

  _SlideshowFinalized slideShowFinalized() {
    return const _SlideshowFinalized();
  }
}

/// @nodoc
const $OnboardingState = _$OnboardingStateTearOff();

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) initial,
    required TResult Function() slideShowFinalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? initial,
    TResult Function()? slideShowFinalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? initial,
    TResult Function()? slideShowFinalized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SlideshowFinalized value) slideShowFinalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SlideshowFinalized value)? slideShowFinalized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SlideshowFinalized value)? slideShowFinalized,
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
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_Initial(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'OnboardingState.initial(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) initial,
    required TResult Function() slideShowFinalized,
  }) {
    return initial(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? initial,
    TResult Function()? slideShowFinalized,
  }) {
    return initial?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? initial,
    TResult Function()? slideShowFinalized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SlideshowFinalized value) slideShowFinalized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SlideshowFinalized value)? slideShowFinalized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SlideshowFinalized value)? slideShowFinalized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardingState {
  const factory _Initial(int page) = _$_Initial;

  int get page;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SlideshowFinalizedCopyWith<$Res> {
  factory _$SlideshowFinalizedCopyWith(
          _SlideshowFinalized value, $Res Function(_SlideshowFinalized) then) =
      __$SlideshowFinalizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SlideshowFinalizedCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$SlideshowFinalizedCopyWith<$Res> {
  __$SlideshowFinalizedCopyWithImpl(
      _SlideshowFinalized _value, $Res Function(_SlideshowFinalized) _then)
      : super(_value, (v) => _then(v as _SlideshowFinalized));

  @override
  _SlideshowFinalized get _value => super._value as _SlideshowFinalized;
}

/// @nodoc

class _$_SlideshowFinalized implements _SlideshowFinalized {
  const _$_SlideshowFinalized();

  @override
  String toString() {
    return 'OnboardingState.slideShowFinalized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SlideshowFinalized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) initial,
    required TResult Function() slideShowFinalized,
  }) {
    return slideShowFinalized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? initial,
    TResult Function()? slideShowFinalized,
  }) {
    return slideShowFinalized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? initial,
    TResult Function()? slideShowFinalized,
    required TResult orElse(),
  }) {
    if (slideShowFinalized != null) {
      return slideShowFinalized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SlideshowFinalized value) slideShowFinalized,
  }) {
    return slideShowFinalized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SlideshowFinalized value)? slideShowFinalized,
  }) {
    return slideShowFinalized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SlideshowFinalized value)? slideShowFinalized,
    required TResult orElse(),
  }) {
    if (slideShowFinalized != null) {
      return slideShowFinalized(this);
    }
    return orElse();
  }
}

abstract class _SlideshowFinalized implements OnboardingState {
  const factory _SlideshowFinalized() = _$_SlideshowFinalized;
}
