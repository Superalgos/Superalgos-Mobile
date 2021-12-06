import 'package:json_annotation/json_annotation.dart';

part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileModel extends GenericUIObject {
  UserProfileModel({
    required String type,
    required String name,
    required String config,
    required String project,
    required String id,
    required SavedPayload savedPayload,
    this.socialPersonas,
    this.userApps,
    required this.tokenPowerSwitch,
    required this.tokensMined,
  }) : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  final TokenPowerSwitch tokenPowerSwitch;
  final TokensMined tokensMined;
  @JsonKey(includeIfNull: false)
  SocialPersonas? socialPersonas;
  @JsonKey(includeIfNull: false)
  UserApps? userApps;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);

  // an utility factory
  factory UserProfileModel.newInstance(String id, String name,
          TokenPowerSwitch tokenPowerSwitch, TokensMined tokensMined,
          {String? config,
          SocialPersonas? socialPersonas,
          UserApps? userApps}) =>
      UserProfileModel(
          type: "User Profile",
          name: name,
          config: config ?? "{}",
          project: "Governance",
          id: id,
          savedPayload: SavedPayload.defaultInstance(),
          tokenPowerSwitch: tokenPowerSwitch,
          tokensMined: tokensMined,
          socialPersonas: socialPersonas,
          userApps: userApps);
}

@JsonSerializable()
class UserApps extends GenericUIObject {
  UserApps({
    required String type,
    required String name,
    required String config,
    required String project,
    required String id,
    required SavedPayload savedPayload,
    this.mobileApps,
  }) : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  MobileApps? mobileApps;

  factory UserApps.fromJson(Map<String, dynamic> json) =>
      _$UserAppsFromJson(json);

  Map<String, dynamic> toJson() => _$UserAppsToJson(this);

  factory UserApps.newInstance(
          SavedPayload savedPayload, id, MobileApps mobileApps) =>
      UserApps(
          type: "User Apps",
          name: "New User Apps",
          config: "{}",
          project: "Governance",
          id: id,
          savedPayload: savedPayload,
          mobileApps: mobileApps);
}

@JsonSerializable()
class MobileApps extends GenericUIObject {
  MobileApps({
    required String type,
    required String name,
    required String config,
    required String project,
    required String id,
    required SavedPayload savedPayload,
    this.socialTradingMobileApps,
  }) : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  @JsonKey(includeIfNull: true)
  List<SocialTradingMobileApp>? socialTradingMobileApps;

  factory MobileApps.fromJson(Map<String, dynamic> json) =>
      _$MobileAppsFromJson(json);

  Map<String, dynamic> toJson() => _$MobileAppsToJson(this);

  factory MobileApps.newInstance(SavedPayload savedPayload, id,
          String nodeConfig, List<SocialTradingMobileApp> socialTradingMobileApps) =>
      MobileApps(
          id: id,
          type: "Mobile Apps",
          name: "New Mobile Apps",
          project: "Governance",
          config: nodeConfig,
          savedPayload: savedPayload,
          socialTradingMobileApps: socialTradingMobileApps);
}

@JsonSerializable()
class SocialTradingMobileApp extends GenericUIObject {
  SocialTradingMobileApp({
    required String type,
    required String name,
    required String config,
    required String project,
    required String id,
    required SavedPayload savedPayload,
  }) : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  @JsonKey(includeIfNull: true)
  SigningAccount? signingAccount;

  factory SocialTradingMobileApp.fromJson(Map<String, dynamic> json) =>
      _$SocialTradingMobileAppFromJson(json);

  Map<String, dynamic> toJson() => _$SocialTradingMobileAppToJson(this);

  factory SocialTradingMobileApp.toUnsignedSocialTradingMobileApp(
      SavedPayload savedPayload, id, String nodeConfig) =>
      SocialTradingMobileApp(
          id: id,
          type: "Social Trading Mobile App",
          name: "New Social Trading Mobile App",
          project: "Governance",
          config: nodeConfig,
          savedPayload: savedPayload);
}

@JsonSerializable()
class SocialPersonas extends GenericUIObject {
  SocialPersonas({
    required String type,
    required String name,
    required String config,
    required String project,
    required String id,
    required SavedPayload savedPayload,
    required this.socialPersonas,
  }) : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  @JsonKey(includeIfNull: false)
  List<SocialPersona>? socialPersonas;

  factory SocialPersonas.fromJson(Map<String, dynamic> json) =>
      _$SocialPersonasFromJson(json);

  Map<String, dynamic> toJson() => _$SocialPersonasToJson(this);

  factory SocialPersonas.newInstance(String id, SavedPayload savedPayload,
          List<SocialPersona> socialPersonas) =>
      SocialPersonas(
          type: "Social Personas",
          name: "New Social Personas",
          config: "{}",
          project: "Governance",
          id: id,
          savedPayload: savedPayload,
          socialPersonas: socialPersonas);
}

@JsonSerializable()
class SocialPersona extends GenericUIObject {
  SocialPersona({
    required String type,
    required String name,
    required String config,
    required String project,
    required String id,
    required SavedPayload savedPayload,
    this.signingAccount,
  }) : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  @JsonKey(includeIfNull: false)
  SigningAccount? signingAccount;

  factory SocialPersona.fromJson(Map<String, dynamic> json) =>
      _$SocialPersonaFromJson(json);

  Map<String, dynamic> toJson() => _$SocialPersonaToJson(this);

  factory SocialPersona.toUnsignedSocialPersona(
          SavedPayload savedPayload, id, String nodeConfig) =>
      SocialPersona(
          id: id,
          type: "Social Persona",
          name: "New Social Persona",
          project: "Governance",
          config: nodeConfig,
          savedPayload: savedPayload);
}

@JsonSerializable()
class SigningAccount extends GenericUIObject {
  SigningAccount(
      {required String type,
      required String name,
      required String config,
      required String project,
      required String id,
      required SavedPayload savedPayload})
      : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  factory SigningAccount.fromJson(Map<String, dynamic> json) =>
      _$SigningAccountFromJson(json);

  Map<String, dynamic> toJson() => _$SigningAccountToJson(this);

  factory SigningAccount.defaultInstance(
          SavedPayload savedPayload, id, String nodeConfig) =>
      SigningAccount(
          id: id,
          type: "Signing Account",
          name: "New Signing Account",
          project: "Governance",
          config: nodeConfig,
          savedPayload: savedPayload);
}

@JsonSerializable()
class SavedPayload {
  SavedPayload({
    required this.position,
    required this.targetPosition,
    required this.floatingObject,
    required this.uiObject,
  });

  final Position position;
  final Position targetPosition;
  final FloatingObject floatingObject;
  final UiObject uiObject;

  factory SavedPayload.fromJson(Map<String, dynamic> json) =>
      _$SavedPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$SavedPayloadToJson(this);

  factory SavedPayload.defaultInstance() => SavedPayload(
      position: Position.atZeroCoords(),
      targetPosition: Position.atZeroCoords(),
      floatingObject: FloatingObject.defaultInstance(),
      uiObject: UiObject.defaultInstance());
}

@JsonSerializable()
class FloatingObject {
  FloatingObject({
    required this.isPinned,
    required this.isFrozen,
    required this.isCollapsed,
    required this.angleToParent,
    required this.distanceToParent,
    required this.arrangementStyle,
  });

  final bool isPinned;
  final bool isFrozen;
  final bool isCollapsed;
  final int angleToParent;
  final int distanceToParent;
  final int arrangementStyle;

  factory FloatingObject.fromJson(Map<String, dynamic> json) =>
      _$FloatingObjectFromJson(json);

  Map<String, dynamic> toJson() => _$FloatingObjectToJson(this);

  factory FloatingObject.defaultInstance() => FloatingObject(
      isPinned: false,
      isFrozen: false,
      isCollapsed: false,
      angleToParent: 1,
      distanceToParent: 3,
      arrangementStyle: 0);
}

@JsonSerializable()
class Position {
  Position({
    required this.x,
    required this.y,
  });

  final double x;
  final double y;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);

  Map<String, dynamic> toJson() => _$PositionToJson(this);

  factory Position.atZeroCoords() => Position(x: 0, y: 0);
}

@JsonSerializable()
class UiObject {
  UiObject({
    required this.isRunning,
  });

  final bool isRunning;

  factory UiObject.fromJson(Map<String, dynamic> json) =>
      _$UiObjectFromJson(json);

  Map<String, dynamic> toJson() => _$UiObjectToJson(this);

  factory UiObject.defaultInstance() => UiObject(isRunning: false);
}

@JsonSerializable()
class TokenPowerSwitch extends GenericUIObject {
  TokenPowerSwitch({
    required String type,
    required String name,
    required String config,
    required String project,
    required String id,
    required SavedPayload savedPayload,
    required this.tokenPowerSwitch,
  }) : super(
            type: type,
            project: project,
            config: config,
            id: id,
            name: name,
            savedPayload: savedPayload);

  final List<dynamic> tokenPowerSwitch;

  factory TokenPowerSwitch.fromJson(Map<String, dynamic> json) =>
      _$TokenPowerSwitchFromJson(json);

  Map<String, dynamic> toJson() => _$TokenPowerSwitchToJson(this);

  factory TokenPowerSwitch.defaultInstance(String id) => TokenPowerSwitch(
      config: "{}",
      project: "Governance",
      tokenPowerSwitch: List.empty(),
      id: id,
      type: "Token Power Switch",
      name: "New Token Power Switch",
      savedPayload: SavedPayload.defaultInstance());
}

@JsonSerializable()
class TokensMined {
  TokensMined({
    required this.type,
    required this.name,
    required this.project,
    required this.id,
    required this.savedPayload,
  });

  final String type;
  final String name;
  final String project;
  final String id;
  final SavedPayload savedPayload;

  factory TokensMined.fromJson(Map<String, dynamic> json) =>
      _$TokensMinedFromJson(json);

  Map<String, dynamic> toJson() => _$TokensMinedToJson(this);

  factory TokensMined.defaultInstance(String id) => TokensMined(
      project: "Governance",
      id: id,
      type: "Tokens Mined",
      name: "New Tokens Mined",
      savedPayload: SavedPayload.defaultInstance());
}

@JsonSerializable()
class GenericUIObject {
  GenericUIObject({
    required this.id,
    required this.type,
    required this.name,
    required this.project,
    required this.config,
    required this.savedPayload,
  });

  final String id;
  final String type;
  final String name;
  final String project;
  String config;
  final SavedPayload savedPayload;

  factory GenericUIObject.fromJson(Map<String, dynamic> json) =>
      _$GenericUIObjectFromJson(json);

  Map<String, dynamic> toJson() => _$GenericUIObjectToJson(this);
}
