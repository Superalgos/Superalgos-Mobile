// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
      socialPersonas: json['socialPersonas'] == null
          ? null
          : SocialPersonas.fromJson(
              json['socialPersonas'] as Map<String, dynamic>),
      userApps: json['userApps'] == null
          ? null
          : UserApps.fromJson(json['userApps'] as Map<String, dynamic>),
      tokenPowerSwitch: TokenPowerSwitch.fromJson(
          json['tokenPowerSwitch'] as Map<String, dynamic>),
      tokensMined:
          TokensMined.fromJson(json['tokensMined'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
    'name': instance.name,
    'project': instance.project,
    'config': instance.config,
    'savedPayload': instance.savedPayload,
    'tokenPowerSwitch': instance.tokenPowerSwitch,
    'tokensMined': instance.tokensMined,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('socialPersonas', instance.socialPersonas);
  writeNotNull('userApps', instance.userApps);
  return val;
}

UserApps _$UserAppsFromJson(Map<String, dynamic> json) => UserApps(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
      mobileApps: json['mobileApps'] == null
          ? null
          : MobileApps.fromJson(json['mobileApps'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAppsToJson(UserApps instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'config': instance.config,
      'savedPayload': instance.savedPayload,
      'mobileApps': instance.mobileApps,
    };

MobileApps _$MobileAppsFromJson(Map<String, dynamic> json) => MobileApps(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
      socialTradingMobileApps: (json['socialTradingMobileApps']
              as List<dynamic>?)
          ?.map(
              (e) => SocialTradingMobileApp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MobileAppsToJson(MobileApps instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'config': instance.config,
      'savedPayload': instance.savedPayload,
      'socialTradingMobileApps': instance.socialTradingMobileApps,
    };

SocialTradingMobileApp _$SocialTradingMobileAppFromJson(
        Map<String, dynamic> json) =>
    SocialTradingMobileApp(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
    )..signingAccount = json['signingAccount'] == null
        ? null
        : SigningAccount.fromJson(
            json['signingAccount'] as Map<String, dynamic>);

Map<String, dynamic> _$SocialTradingMobileAppToJson(
        SocialTradingMobileApp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'config': instance.config,
      'savedPayload': instance.savedPayload,
      'signingAccount': instance.signingAccount,
    };

SocialPersonas _$SocialPersonasFromJson(Map<String, dynamic> json) =>
    SocialPersonas(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
      socialPersonas: (json['socialPersonas'] as List<dynamic>?)
          ?.map((e) => SocialPersona.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SocialPersonasToJson(SocialPersonas instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
    'name': instance.name,
    'project': instance.project,
    'config': instance.config,
    'savedPayload': instance.savedPayload,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('socialPersonas', instance.socialPersonas);
  return val;
}

SocialPersona _$SocialPersonaFromJson(Map<String, dynamic> json) =>
    SocialPersona(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
      signingAccount: json['signingAccount'] == null
          ? null
          : SigningAccount.fromJson(
              json['signingAccount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocialPersonaToJson(SocialPersona instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
    'name': instance.name,
    'project': instance.project,
    'config': instance.config,
    'savedPayload': instance.savedPayload,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('signingAccount', instance.signingAccount);
  return val;
}

SigningAccount _$SigningAccountFromJson(Map<String, dynamic> json) =>
    SigningAccount(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SigningAccountToJson(SigningAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'config': instance.config,
      'savedPayload': instance.savedPayload,
    };

SavedPayload _$SavedPayloadFromJson(Map<String, dynamic> json) => SavedPayload(
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      targetPosition:
          Position.fromJson(json['targetPosition'] as Map<String, dynamic>),
      floatingObject: FloatingObject.fromJson(
          json['floatingObject'] as Map<String, dynamic>),
      uiObject: UiObject.fromJson(json['uiObject'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedPayloadToJson(SavedPayload instance) =>
    <String, dynamic>{
      'position': instance.position,
      'targetPosition': instance.targetPosition,
      'floatingObject': instance.floatingObject,
      'uiObject': instance.uiObject,
    };

FloatingObject _$FloatingObjectFromJson(Map<String, dynamic> json) =>
    FloatingObject(
      isPinned: json['isPinned'] as bool,
      isFrozen: json['isFrozen'] as bool,
      isCollapsed: json['isCollapsed'] as bool,
      angleToParent: json['angleToParent'] as int,
      distanceToParent: json['distanceToParent'] as int,
      arrangementStyle: json['arrangementStyle'] as int,
    );

Map<String, dynamic> _$FloatingObjectToJson(FloatingObject instance) =>
    <String, dynamic>{
      'isPinned': instance.isPinned,
      'isFrozen': instance.isFrozen,
      'isCollapsed': instance.isCollapsed,
      'angleToParent': instance.angleToParent,
      'distanceToParent': instance.distanceToParent,
      'arrangementStyle': instance.arrangementStyle,
    };

Position _$PositionFromJson(Map<String, dynamic> json) => Position(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

UiObject _$UiObjectFromJson(Map<String, dynamic> json) => UiObject(
      isRunning: json['isRunning'] as bool,
    );

Map<String, dynamic> _$UiObjectToJson(UiObject instance) => <String, dynamic>{
      'isRunning': instance.isRunning,
    };

TokenPowerSwitch _$TokenPowerSwitchFromJson(Map<String, dynamic> json) =>
    TokenPowerSwitch(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
      tokenPowerSwitch: json['tokenPowerSwitch'] as List<dynamic>,
    );

Map<String, dynamic> _$TokenPowerSwitchToJson(TokenPowerSwitch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'config': instance.config,
      'savedPayload': instance.savedPayload,
      'tokenPowerSwitch': instance.tokenPowerSwitch,
    };

TokensMined _$TokensMinedFromJson(Map<String, dynamic> json) => TokensMined(
      type: json['type'] as String,
      name: json['name'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokensMinedToJson(TokensMined instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'id': instance.id,
      'savedPayload': instance.savedPayload,
    };

GenericUIObject _$GenericUIObjectFromJson(Map<String, dynamic> json) =>
    GenericUIObject(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      project: json['project'] as String,
      config: json['config'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenericUIObjectToJson(GenericUIObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'config': instance.config,
      'savedPayload': instance.savedPayload,
    };
