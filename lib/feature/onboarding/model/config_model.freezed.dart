// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SigningConfig _$SigningConfigFromJson(Map<String, dynamic> json) {
  return _Config.fromJson(json);
}

/// @nodoc
class _$SigningConfigTearOff {
  const _$SigningConfigTearOff();

  _Config call({required Signature signature, required String codeName}) {
    return _Config(
      signature: signature,
      codeName: codeName,
    );
  }

  SigningConfig fromJson(Map<String, Object?> json) {
    return SigningConfig.fromJson(json);
  }
}

/// @nodoc
const $SigningConfig = _$SigningConfigTearOff();

/// @nodoc
mixin _$SigningConfig {
  Signature get signature => throw _privateConstructorUsedError;
  String get codeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigningConfigCopyWith<SigningConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigningConfigCopyWith<$Res> {
  factory $SigningConfigCopyWith(
          SigningConfig value, $Res Function(SigningConfig) then) =
      _$SigningConfigCopyWithImpl<$Res>;
  $Res call({Signature signature, String codeName});

  $SignatureCopyWith<$Res> get signature;
}

/// @nodoc
class _$SigningConfigCopyWithImpl<$Res>
    implements $SigningConfigCopyWith<$Res> {
  _$SigningConfigCopyWithImpl(this._value, this._then);

  final SigningConfig _value;
  // ignore: unused_field
  final $Res Function(SigningConfig) _then;

  @override
  $Res call({
    Object? signature = freezed,
    Object? codeName = freezed,
  }) {
    return _then(_value.copyWith(
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Signature,
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SignatureCopyWith<$Res> get signature {
    return $SignatureCopyWith<$Res>(_value.signature, (value) {
      return _then(_value.copyWith(signature: value));
    });
  }
}

/// @nodoc
abstract class _$ConfigCopyWith<$Res> implements $SigningConfigCopyWith<$Res> {
  factory _$ConfigCopyWith(_Config value, $Res Function(_Config) then) =
      __$ConfigCopyWithImpl<$Res>;
  @override
  $Res call({Signature signature, String codeName});

  @override
  $SignatureCopyWith<$Res> get signature;
}

/// @nodoc
class __$ConfigCopyWithImpl<$Res> extends _$SigningConfigCopyWithImpl<$Res>
    implements _$ConfigCopyWith<$Res> {
  __$ConfigCopyWithImpl(_Config _value, $Res Function(_Config) _then)
      : super(_value, (v) => _then(v as _Config));

  @override
  _Config get _value => super._value as _Config;

  @override
  $Res call({
    Object? signature = freezed,
    Object? codeName = freezed,
  }) {
    return _then(_Config(
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Signature,
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Config implements _Config {
  const _$_Config({required this.signature, required this.codeName});

  factory _$_Config.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigFromJson(json);

  @override
  final Signature signature;
  @override
  final String codeName;

  @override
  String toString() {
    return 'SigningConfig(signature: $signature, codeName: $codeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Config &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signature, codeName);

  @JsonKey(ignore: true)
  @override
  _$ConfigCopyWith<_Config> get copyWith =>
      __$ConfigCopyWithImpl<_Config>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigToJson(this);
  }
}

abstract class _Config implements SigningConfig {
  const factory _Config(
      {required Signature signature, required String codeName}) = _$_Config;

  factory _Config.fromJson(Map<String, dynamic> json) = _$_Config.fromJson;

  @override
  Signature get signature;
  @override
  String get codeName;
  @override
  @JsonKey(ignore: true)
  _$ConfigCopyWith<_Config> get copyWith => throw _privateConstructorUsedError;
}

SocialMobileAppConfig _$SocialMobileAppConfigFromJson(
    Map<String, dynamic> json) {
  return _SocialMobileAppConfig.fromJson(json);
}

/// @nodoc
class _$SocialMobileAppConfigTearOff {
  const _$SocialMobileAppConfigTearOff();

  _SocialMobileAppConfig call(
      {required String codeName, String? host, String? webSocketsPort}) {
    return _SocialMobileAppConfig(
      codeName: codeName,
      host: host,
      webSocketsPort: webSocketsPort,
    );
  }

  SocialMobileAppConfig fromJson(Map<String, Object?> json) {
    return SocialMobileAppConfig.fromJson(json);
  }
}

/// @nodoc
const $SocialMobileAppConfig = _$SocialMobileAppConfigTearOff();

/// @nodoc
mixin _$SocialMobileAppConfig {
  String get codeName => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;
  String? get webSocketsPort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMobileAppConfigCopyWith<SocialMobileAppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMobileAppConfigCopyWith<$Res> {
  factory $SocialMobileAppConfigCopyWith(SocialMobileAppConfig value,
          $Res Function(SocialMobileAppConfig) then) =
      _$SocialMobileAppConfigCopyWithImpl<$Res>;
  $Res call({String codeName, String? host, String? webSocketsPort});
}

/// @nodoc
class _$SocialMobileAppConfigCopyWithImpl<$Res>
    implements $SocialMobileAppConfigCopyWith<$Res> {
  _$SocialMobileAppConfigCopyWithImpl(this._value, this._then);

  final SocialMobileAppConfig _value;
  // ignore: unused_field
  final $Res Function(SocialMobileAppConfig) _then;

  @override
  $Res call({
    Object? codeName = freezed,
    Object? host = freezed,
    Object? webSocketsPort = freezed,
  }) {
    return _then(_value.copyWith(
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      webSocketsPort: webSocketsPort == freezed
          ? _value.webSocketsPort
          : webSocketsPort // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SocialMobileAppConfigCopyWith<$Res>
    implements $SocialMobileAppConfigCopyWith<$Res> {
  factory _$SocialMobileAppConfigCopyWith(_SocialMobileAppConfig value,
          $Res Function(_SocialMobileAppConfig) then) =
      __$SocialMobileAppConfigCopyWithImpl<$Res>;
  @override
  $Res call({String codeName, String? host, String? webSocketsPort});
}

/// @nodoc
class __$SocialMobileAppConfigCopyWithImpl<$Res>
    extends _$SocialMobileAppConfigCopyWithImpl<$Res>
    implements _$SocialMobileAppConfigCopyWith<$Res> {
  __$SocialMobileAppConfigCopyWithImpl(_SocialMobileAppConfig _value,
      $Res Function(_SocialMobileAppConfig) _then)
      : super(_value, (v) => _then(v as _SocialMobileAppConfig));

  @override
  _SocialMobileAppConfig get _value => super._value as _SocialMobileAppConfig;

  @override
  $Res call({
    Object? codeName = freezed,
    Object? host = freezed,
    Object? webSocketsPort = freezed,
  }) {
    return _then(_SocialMobileAppConfig(
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      webSocketsPort: webSocketsPort == freezed
          ? _value.webSocketsPort
          : webSocketsPort // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialMobileAppConfig implements _SocialMobileAppConfig {
  const _$_SocialMobileAppConfig(
      {required this.codeName, this.host, this.webSocketsPort});

  factory _$_SocialMobileAppConfig.fromJson(Map<String, dynamic> json) =>
      _$$_SocialMobileAppConfigFromJson(json);

  @override
  final String codeName;
  @override
  final String? host;
  @override
  final String? webSocketsPort;

  @override
  String toString() {
    return 'SocialMobileAppConfig(codeName: $codeName, host: $host, webSocketsPort: $webSocketsPort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialMobileAppConfig &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.webSocketsPort, webSocketsPort) ||
                other.webSocketsPort == webSocketsPort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, codeName, host, webSocketsPort);

  @JsonKey(ignore: true)
  @override
  _$SocialMobileAppConfigCopyWith<_SocialMobileAppConfig> get copyWith =>
      __$SocialMobileAppConfigCopyWithImpl<_SocialMobileAppConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialMobileAppConfigToJson(this);
  }
}

abstract class _SocialMobileAppConfig implements SocialMobileAppConfig {
  const factory _SocialMobileAppConfig(
      {required String codeName,
      String? host,
      String? webSocketsPort}) = _$_SocialMobileAppConfig;

  factory _SocialMobileAppConfig.fromJson(Map<String, dynamic> json) =
      _$_SocialMobileAppConfig.fromJson;

  @override
  String get codeName;
  @override
  String? get host;
  @override
  String? get webSocketsPort;
  @override
  @JsonKey(ignore: true)
  _$SocialMobileAppConfigCopyWith<_SocialMobileAppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialPersonaConfig _$SocialPersonaConfigFromJson(Map<String, dynamic> json) {
  return _SocialPersonaConfig.fromJson(json);
}

/// @nodoc
class _$SocialPersonaConfigTearOff {
  const _$SocialPersonaConfigTearOff();

  _SocialPersonaConfig call(
      {required String codeName,
      required String socialHandle,
      required String bio}) {
    return _SocialPersonaConfig(
      codeName: codeName,
      socialHandle: socialHandle,
      bio: bio,
    );
  }

  SocialPersonaConfig fromJson(Map<String, Object?> json) {
    return SocialPersonaConfig.fromJson(json);
  }
}

/// @nodoc
const $SocialPersonaConfig = _$SocialPersonaConfigTearOff();

/// @nodoc
mixin _$SocialPersonaConfig {
  String get codeName => throw _privateConstructorUsedError;
  String get socialHandle => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialPersonaConfigCopyWith<SocialPersonaConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialPersonaConfigCopyWith<$Res> {
  factory $SocialPersonaConfigCopyWith(
          SocialPersonaConfig value, $Res Function(SocialPersonaConfig) then) =
      _$SocialPersonaConfigCopyWithImpl<$Res>;
  $Res call({String codeName, String socialHandle, String bio});
}

/// @nodoc
class _$SocialPersonaConfigCopyWithImpl<$Res>
    implements $SocialPersonaConfigCopyWith<$Res> {
  _$SocialPersonaConfigCopyWithImpl(this._value, this._then);

  final SocialPersonaConfig _value;
  // ignore: unused_field
  final $Res Function(SocialPersonaConfig) _then;

  @override
  $Res call({
    Object? codeName = freezed,
    Object? socialHandle = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      socialHandle: socialHandle == freezed
          ? _value.socialHandle
          : socialHandle // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SocialPersonaConfigCopyWith<$Res>
    implements $SocialPersonaConfigCopyWith<$Res> {
  factory _$SocialPersonaConfigCopyWith(_SocialPersonaConfig value,
          $Res Function(_SocialPersonaConfig) then) =
      __$SocialPersonaConfigCopyWithImpl<$Res>;
  @override
  $Res call({String codeName, String socialHandle, String bio});
}

/// @nodoc
class __$SocialPersonaConfigCopyWithImpl<$Res>
    extends _$SocialPersonaConfigCopyWithImpl<$Res>
    implements _$SocialPersonaConfigCopyWith<$Res> {
  __$SocialPersonaConfigCopyWithImpl(
      _SocialPersonaConfig _value, $Res Function(_SocialPersonaConfig) _then)
      : super(_value, (v) => _then(v as _SocialPersonaConfig));

  @override
  _SocialPersonaConfig get _value => super._value as _SocialPersonaConfig;

  @override
  $Res call({
    Object? codeName = freezed,
    Object? socialHandle = freezed,
    Object? bio = freezed,
  }) {
    return _then(_SocialPersonaConfig(
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      socialHandle: socialHandle == freezed
          ? _value.socialHandle
          : socialHandle // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialPersonaConfig implements _SocialPersonaConfig {
  const _$_SocialPersonaConfig(
      {required this.codeName, required this.socialHandle, required this.bio});

  factory _$_SocialPersonaConfig.fromJson(Map<String, dynamic> json) =>
      _$$_SocialPersonaConfigFromJson(json);

  @override
  final String codeName;
  @override
  final String socialHandle;
  @override
  final String bio;

  @override
  String toString() {
    return 'SocialPersonaConfig(codeName: $codeName, socialHandle: $socialHandle, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialPersonaConfig &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName) &&
            (identical(other.socialHandle, socialHandle) ||
                other.socialHandle == socialHandle) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, codeName, socialHandle, bio);

  @JsonKey(ignore: true)
  @override
  _$SocialPersonaConfigCopyWith<_SocialPersonaConfig> get copyWith =>
      __$SocialPersonaConfigCopyWithImpl<_SocialPersonaConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialPersonaConfigToJson(this);
  }
}

abstract class _SocialPersonaConfig implements SocialPersonaConfig {
  const factory _SocialPersonaConfig(
      {required String codeName,
      required String socialHandle,
      required String bio}) = _$_SocialPersonaConfig;

  factory _SocialPersonaConfig.fromJson(Map<String, dynamic> json) =
      _$_SocialPersonaConfig.fromJson;

  @override
  String get codeName;
  @override
  String get socialHandle;
  @override
  String get bio;
  @override
  @JsonKey(ignore: true)
  _$SocialPersonaConfigCopyWith<_SocialPersonaConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
