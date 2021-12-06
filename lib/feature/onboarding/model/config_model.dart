import 'package:app/services/signature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'config_model.freezed.dart';
part 'config_model.g.dart';

SigningConfig configFromJson(String str) => SigningConfig.fromJson(json.decode(str));

String configToJson(SigningConfig data) => json.encode(data.toJson());

@freezed
class SigningConfig with _$SigningConfig {
  const factory SigningConfig({
    required Signature signature,
    required String codeName,
  }) = _Config;

  factory SigningConfig.fromJson(Map<String, dynamic> json) => _$SigningConfigFromJson(json);
}


SocialMobileAppConfig socialMobileAppConfigFromJson(String str) =>
    SocialMobileAppConfig.fromJson(json.decode(str));

String socialMobileAppConfigToJson(SocialMobileAppConfig data) =>
    json.encode(data.toJson());

@freezed
class SocialMobileAppConfig with _$SocialMobileAppConfig {
  const factory SocialMobileAppConfig(
      {required String codeName,
        String? host,
        String? webSocketsPort}) = _SocialMobileAppConfig;

  factory SocialMobileAppConfig.fromJson(Map<String, dynamic> json) =>
      _$SocialMobileAppConfigFromJson(json);
}


SocialPersonaConfig socialPersonaConfigFromJson(String str) =>
    SocialPersonaConfig.fromJson(json.decode(str));

String socialPersonaConfigToJson(SocialPersonaConfig data) =>
    json.encode(data.toJson());

@freezed
class SocialPersonaConfig with _$SocialPersonaConfig {
  const factory SocialPersonaConfig({
    required String codeName,
    required String socialHandle,
    required String bio,
  }) = _SocialPersonaConfig;

  factory SocialPersonaConfig.fromJson(Map<String, dynamic> json) =>
      _$SocialPersonaConfigFromJson(json);
}