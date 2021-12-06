import 'package:app/services/signature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_model.g.dart';

@JsonSerializable()
class SigningConfig extends SharedConfig {

  SigningConfig({
    required String codeName,
    required this.signature,
  }) : super(codeName: codeName);

  final Signature signature;

  factory SigningConfig.fromJson(Map<String, dynamic> json) =>
      _$SigningConfigFromJson(json);

  Map<String, dynamic> toJson() => _$SigningConfigToJson(this);
}

@JsonSerializable()
class SocialMobileAppConfig extends SharedConfig {
  SocialMobileAppConfig(
      {required String codeName, this.host, this.webSocketsPort})
      : super(codeName: codeName);

  final String? host;
  final String? webSocketsPort;

  factory SocialMobileAppConfig.fromJson(Map<String, dynamic> json) =>
      _$SocialMobileAppConfigFromJson(json);

  Map<String, dynamic> toJson() => _$SocialMobileAppConfigToJson(this);
}

@JsonSerializable()
class SocialPersonaConfig extends SharedConfig {
  SocialPersonaConfig({
    required codeName,
    required this.socialHandle,
    required this.bio,
  }) : super(codeName: codeName);

  final String socialHandle;
  final String bio;

  factory SocialPersonaConfig.fromJson(Map<String, dynamic> json) =>
      _$SocialPersonaConfigFromJson(json);

  Map<String, dynamic> toJson() => _$SocialPersonaConfigToJson(this);
}

@JsonSerializable()
class SharedConfig {
  SharedConfig({
    required this.codeName,
  });

  final String codeName;

  factory SharedConfig.fromJson(Map<String, dynamic> json) =>
      _$SharedConfigFromJson(json);

  Map<String, dynamic> toJson() => _$SharedConfigToJson(this);
}
