// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      tokenPowerSwitch: TokenPowerSwitch.fromJson(
          json['tokenPowerSwitch'] as Map<String, dynamic>),
      tokensMined:
          TokensMined.fromJson(json['tokensMined'] as Map<String, dynamic>),
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'config': instance.config,
      'project': instance.project,
      'tokenPowerSwitch': instance.tokenPowerSwitch,
      'tokensMined': instance.tokensMined,
      'id': instance.id,
      'savedPayload': instance.savedPayload,
    };

_$_SavedPayload _$$_SavedPayloadFromJson(Map<String, dynamic> json) =>
    _$_SavedPayload(
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      targetPosition:
          Position.fromJson(json['targetPosition'] as Map<String, dynamic>),
      floatingObject: FloatingObject.fromJson(
          json['floatingObject'] as Map<String, dynamic>),
      uiObject: UiObject.fromJson(json['uiObject'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SavedPayloadToJson(_$_SavedPayload instance) =>
    <String, dynamic>{
      'position': instance.position,
      'targetPosition': instance.targetPosition,
      'floatingObject': instance.floatingObject,
      'uiObject': instance.uiObject,
    };

_$_FloatingObject _$$_FloatingObjectFromJson(Map<String, dynamic> json) =>
    _$_FloatingObject(
      isPinned: json['isPinned'] as bool,
      isFrozen: json['isFrozen'] as bool,
      isCollapsed: json['isCollapsed'] as bool,
      angleToParent: json['angleToParent'] as int,
      distanceToParent: json['distanceToParent'] as int,
      arrangementStyle: json['arrangementStyle'] as int,
    );

Map<String, dynamic> _$$_FloatingObjectToJson(_$_FloatingObject instance) =>
    <String, dynamic>{
      'isPinned': instance.isPinned,
      'isFrozen': instance.isFrozen,
      'isCollapsed': instance.isCollapsed,
      'angleToParent': instance.angleToParent,
      'distanceToParent': instance.distanceToParent,
      'arrangementStyle': instance.arrangementStyle,
    };

_$_Position _$$_PositionFromJson(Map<String, dynamic> json) => _$_Position(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PositionToJson(_$_Position instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$_UiObject _$$_UiObjectFromJson(Map<String, dynamic> json) => _$_UiObject(
      isRunning: json['isRunning'] as bool,
    );

Map<String, dynamic> _$$_UiObjectToJson(_$_UiObject instance) =>
    <String, dynamic>{
      'isRunning': instance.isRunning,
    };

_$_TokenPowerSwitch _$$_TokenPowerSwitchFromJson(Map<String, dynamic> json) =>
    _$_TokenPowerSwitch(
      type: json['type'] as String,
      name: json['name'] as String,
      config: json['config'] as String,
      project: json['project'] as String,
      tokenPowerSwitch: json['tokenPowerSwitch'] as List<dynamic>,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenPowerSwitchToJson(_$_TokenPowerSwitch instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'config': instance.config,
      'project': instance.project,
      'tokenPowerSwitch': instance.tokenPowerSwitch,
      'id': instance.id,
      'savedPayload': instance.savedPayload,
    };

_$_TokensMined _$$_TokensMinedFromJson(Map<String, dynamic> json) =>
    _$_TokensMined(
      type: json['type'] as String,
      name: json['name'] as String,
      project: json['project'] as String,
      id: json['id'] as String,
      savedPayload:
          SavedPayload.fromJson(json['savedPayload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokensMinedToJson(_$_TokensMined instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'project': instance.project,
      'id': instance.id,
      'savedPayload': instance.savedPayload,
    };
