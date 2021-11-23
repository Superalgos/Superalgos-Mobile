// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {required String userName,
      required bool hasSAFork,
      required bool hasSAUserProfile,
      String? userProfileContent,
      Repository? saFork}) {
    return _UserModel(
      userName: userName,
      hasSAFork: hasSAFork,
      hasSAUserProfile: hasSAUserProfile,
      userProfileContent: userProfileContent,
      saFork: saFork,
    );
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String get userName => throw _privateConstructorUsedError;
  bool get hasSAFork => throw _privateConstructorUsedError;
  bool get hasSAUserProfile => throw _privateConstructorUsedError;
  String? get userProfileContent => throw _privateConstructorUsedError;
  Repository? get saFork => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {String userName,
      bool hasSAFork,
      bool hasSAUserProfile,
      String? userProfileContent,
      Repository? saFork});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? hasSAFork = freezed,
    Object? hasSAUserProfile = freezed,
    Object? userProfileContent = freezed,
    Object? saFork = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      hasSAFork: hasSAFork == freezed
          ? _value.hasSAFork
          : hasSAFork // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSAUserProfile: hasSAUserProfile == freezed
          ? _value.hasSAUserProfile
          : hasSAUserProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfileContent: userProfileContent == freezed
          ? _value.userProfileContent
          : userProfileContent // ignore: cast_nullable_to_non_nullable
              as String?,
      saFork: saFork == freezed
          ? _value.saFork
          : saFork // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userName,
      bool hasSAFork,
      bool hasSAUserProfile,
      String? userProfileContent,
      Repository? saFork});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? userName = freezed,
    Object? hasSAFork = freezed,
    Object? hasSAUserProfile = freezed,
    Object? userProfileContent = freezed,
    Object? saFork = freezed,
  }) {
    return _then(_UserModel(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      hasSAFork: hasSAFork == freezed
          ? _value.hasSAFork
          : hasSAFork // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSAUserProfile: hasSAUserProfile == freezed
          ? _value.hasSAUserProfile
          : hasSAUserProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfileContent: userProfileContent == freezed
          ? _value.userProfileContent
          : userProfileContent // ignore: cast_nullable_to_non_nullable
              as String?,
      saFork: saFork == freezed
          ? _value.saFork
          : saFork // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ));
  }
}

/// @nodoc

class _$_UserModel extends _UserModel {
  const _$_UserModel(
      {required this.userName,
      required this.hasSAFork,
      required this.hasSAUserProfile,
      this.userProfileContent,
      this.saFork})
      : super._();

  @override
  final String userName;
  @override
  final bool hasSAFork;
  @override
  final bool hasSAUserProfile;
  @override
  final String? userProfileContent;
  @override
  final Repository? saFork;

  @override
  String toString() {
    return 'UserModel(userName: $userName, hasSAFork: $hasSAFork, hasSAUserProfile: $hasSAUserProfile, userProfileContent: $userProfileContent, saFork: $saFork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.hasSAFork, hasSAFork) ||
                other.hasSAFork == hasSAFork) &&
            (identical(other.hasSAUserProfile, hasSAUserProfile) ||
                other.hasSAUserProfile == hasSAUserProfile) &&
            (identical(other.userProfileContent, userProfileContent) ||
                other.userProfileContent == userProfileContent) &&
            (identical(other.saFork, saFork) || other.saFork == saFork));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, hasSAFork,
      hasSAUserProfile, userProfileContent, saFork);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {required String userName,
      required bool hasSAFork,
      required bool hasSAUserProfile,
      String? userProfileContent,
      Repository? saFork}) = _$_UserModel;
  const _UserModel._() : super._();

  @override
  String get userName;
  @override
  bool get hasSAFork;
  @override
  bool get hasSAUserProfile;
  @override
  String? get userProfileContent;
  @override
  Repository? get saFork;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
