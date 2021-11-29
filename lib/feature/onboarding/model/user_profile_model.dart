import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_profile_model.freezed.dart';

part 'user_profile_model.g.dart';

UserProfileModel userProfileModelFromJson(String str) =>
    UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) =>
    json.encode(data.toJson());

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String type,
    required String name,
    required String config,
    required String project,
    required TokenPowerSwitch tokenPowerSwitch,
    required TokensMined tokensMined,
    required String id,
    required SavedPayload savedPayload,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

@freezed
class SavedPayload with _$SavedPayload {
  const factory SavedPayload({
    required Position position,
    required Position targetPosition,
    required FloatingObject floatingObject,
    required UiObject uiObject,
  }) = _SavedPayload;

  factory SavedPayload.fromJson(Map<String, dynamic> json) =>
      _$SavedPayloadFromJson(json);
}

@freezed
class FloatingObject with _$FloatingObject {
  const factory FloatingObject({
    required bool isPinned,
    required bool isFrozen,
    required bool isCollapsed,
    required int angleToParent,
    required int distanceToParent,
    required int arrangementStyle,
  }) = _FloatingObject;

  factory FloatingObject.fromJson(Map<String, dynamic> json) =>
      _$FloatingObjectFromJson(json);
}

@freezed
class Position with _$Position {
  const factory Position({
    required double x,
    required double y,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}

@freezed
class UiObject with _$UiObject {
  const factory UiObject({
    required bool isRunning,
  }) = _UiObject;

  factory UiObject.fromJson(Map<String, dynamic> json) =>
      _$UiObjectFromJson(json);
}

@freezed
class TokenPowerSwitch with _$TokenPowerSwitch {
  const factory TokenPowerSwitch({
    required String type,
    required String name,
    required String config,
    required String project,
    required List<dynamic> tokenPowerSwitch,
    required String id,
    required SavedPayload savedPayload,
  }) = _TokenPowerSwitch;

  factory TokenPowerSwitch.fromJson(Map<String, dynamic> json) =>
      _$TokenPowerSwitchFromJson(json);
}

@freezed
class TokensMined with _$TokensMined {
  const factory TokensMined({
    required String type,
    required String name,
    required String project,
    required String id,
    required SavedPayload savedPayload,
  }) = _TokensMined;

  factory TokensMined.fromJson(Map<String, dynamic> json) =>
      _$TokensMinedFromJson(json);
}

