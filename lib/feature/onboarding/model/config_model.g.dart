// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SigningConfig _$SigningConfigFromJson(Map<String, dynamic> json) =>
    SigningConfig(
      codeName: json['codeName'] as String,
      signature: Signature.fromJson(json['signature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SigningConfigToJson(SigningConfig instance) =>
    <String, dynamic>{
      'codeName': instance.codeName,
      'signature': instance.signature,
    };

SocialMobileAppConfig _$SocialMobileAppConfigFromJson(
        Map<String, dynamic> json) =>
    SocialMobileAppConfig(
      codeName: json['codeName'] as String,
      host: json['host'] as String?,
      webSocketsPort: json['webSocketsPort'] as String?,
    );

Map<String, dynamic> _$SocialMobileAppConfigToJson(
        SocialMobileAppConfig instance) =>
    <String, dynamic>{
      'codeName': instance.codeName,
      'host': instance.host,
      'webSocketsPort': instance.webSocketsPort,
    };

SocialPersonaConfig _$SocialPersonaConfigFromJson(Map<String, dynamic> json) =>
    SocialPersonaConfig(
      codeName: json['codeName'],
      socialHandle: json['socialHandle'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$SocialPersonaConfigToJson(
        SocialPersonaConfig instance) =>
    <String, dynamic>{
      'codeName': instance.codeName,
      'socialHandle': instance.socialHandle,
      'bio': instance.bio,
    };

SharedConfig _$SharedConfigFromJson(Map<String, dynamic> json) => SharedConfig(
      codeName: json['codeName'] as String,
    );

Map<String, dynamic> _$SharedConfigToJson(SharedConfig instance) =>
    <String, dynamic>{
      'codeName': instance.codeName,
    };
