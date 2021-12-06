// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Config _$$_ConfigFromJson(Map<String, dynamic> json) => _$_Config(
      signature: Signature.fromJson(json['signature'] as Map<String, dynamic>),
      codeName: json['codeName'] as String,
    );

Map<String, dynamic> _$$_ConfigToJson(_$_Config instance) => <String, dynamic>{
      'signature': instance.signature,
      'codeName': instance.codeName,
    };

_$_SocialMobileAppConfig _$$_SocialMobileAppConfigFromJson(
        Map<String, dynamic> json) =>
    _$_SocialMobileAppConfig(
      codeName: json['codeName'] as String,
      host: json['host'] as String?,
      webSocketsPort: json['webSocketsPort'] as String?,
    );

Map<String, dynamic> _$$_SocialMobileAppConfigToJson(
        _$_SocialMobileAppConfig instance) =>
    <String, dynamic>{
      'codeName': instance.codeName,
      'host': instance.host,
      'webSocketsPort': instance.webSocketsPort,
    };

_$_SocialPersonaConfig _$$_SocialPersonaConfigFromJson(
        Map<String, dynamic> json) =>
    _$_SocialPersonaConfig(
      codeName: json['codeName'] as String,
      socialHandle: json['socialHandle'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$$_SocialPersonaConfigToJson(
        _$_SocialPersonaConfig instance) =>
    <String, dynamic>{
      'codeName': instance.codeName,
      'socialHandle': instance.socialHandle,
      'bio': instance.bio,
    };
