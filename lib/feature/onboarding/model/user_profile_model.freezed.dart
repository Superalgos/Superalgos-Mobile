// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
class _$UserProfileModelTearOff {
  const _$UserProfileModelTearOff();

  _UserProfileModel call(
      {required String type,
      required String name,
      required String config,
      required String project,
      required TokenPowerSwitch tokenPowerSwitch,
      required TokensMined tokensMined,
      required String id,
      required SavedPayload savedPayload}) {
    return _UserProfileModel(
      type: type,
      name: name,
      config: config,
      project: project,
      tokenPowerSwitch: tokenPowerSwitch,
      tokensMined: tokensMined,
      id: id,
      savedPayload: savedPayload,
    );
  }

  UserProfileModel fromJson(Map<String, Object?> json) {
    return UserProfileModel.fromJson(json);
  }
}

/// @nodoc
const $UserProfileModel = _$UserProfileModelTearOff();

/// @nodoc
mixin _$UserProfileModel {
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get config => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;
  TokenPowerSwitch get tokenPowerSwitch => throw _privateConstructorUsedError;
  TokensMined get tokensMined => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  SavedPayload get savedPayload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String name,
      String config,
      String project,
      TokenPowerSwitch tokenPowerSwitch,
      TokensMined tokensMined,
      String id,
      SavedPayload savedPayload});

  $TokenPowerSwitchCopyWith<$Res> get tokenPowerSwitch;
  $TokensMinedCopyWith<$Res> get tokensMined;
  $SavedPayloadCopyWith<$Res> get savedPayload;
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  final UserProfileModel _value;
  // ignore: unused_field
  final $Res Function(UserProfileModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? config = freezed,
    Object? project = freezed,
    Object? tokenPowerSwitch = freezed,
    Object? tokensMined = freezed,
    Object? id = freezed,
    Object? savedPayload = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      tokenPowerSwitch: tokenPowerSwitch == freezed
          ? _value.tokenPowerSwitch
          : tokenPowerSwitch // ignore: cast_nullable_to_non_nullable
              as TokenPowerSwitch,
      tokensMined: tokensMined == freezed
          ? _value.tokensMined
          : tokensMined // ignore: cast_nullable_to_non_nullable
              as TokensMined,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      savedPayload: savedPayload == freezed
          ? _value.savedPayload
          : savedPayload // ignore: cast_nullable_to_non_nullable
              as SavedPayload,
    ));
  }

  @override
  $TokenPowerSwitchCopyWith<$Res> get tokenPowerSwitch {
    return $TokenPowerSwitchCopyWith<$Res>(_value.tokenPowerSwitch, (value) {
      return _then(_value.copyWith(tokenPowerSwitch: value));
    });
  }

  @override
  $TokensMinedCopyWith<$Res> get tokensMined {
    return $TokensMinedCopyWith<$Res>(_value.tokensMined, (value) {
      return _then(_value.copyWith(tokensMined: value));
    });
  }

  @override
  $SavedPayloadCopyWith<$Res> get savedPayload {
    return $SavedPayloadCopyWith<$Res>(_value.savedPayload, (value) {
      return _then(_value.copyWith(savedPayload: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileModelCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(
          _UserProfileModel value, $Res Function(_UserProfileModel) then) =
      __$UserProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String name,
      String config,
      String project,
      TokenPowerSwitch tokenPowerSwitch,
      TokensMined tokensMined,
      String id,
      SavedPayload savedPayload});

  @override
  $TokenPowerSwitchCopyWith<$Res> get tokenPowerSwitch;
  @override
  $TokensMinedCopyWith<$Res> get tokensMined;
  @override
  $SavedPayloadCopyWith<$Res> get savedPayload;
}

/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(
      _UserProfileModel _value, $Res Function(_UserProfileModel) _then)
      : super(_value, (v) => _then(v as _UserProfileModel));

  @override
  _UserProfileModel get _value => super._value as _UserProfileModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? config = freezed,
    Object? project = freezed,
    Object? tokenPowerSwitch = freezed,
    Object? tokensMined = freezed,
    Object? id = freezed,
    Object? savedPayload = freezed,
  }) {
    return _then(_UserProfileModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      tokenPowerSwitch: tokenPowerSwitch == freezed
          ? _value.tokenPowerSwitch
          : tokenPowerSwitch // ignore: cast_nullable_to_non_nullable
              as TokenPowerSwitch,
      tokensMined: tokensMined == freezed
          ? _value.tokensMined
          : tokensMined // ignore: cast_nullable_to_non_nullable
              as TokensMined,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      savedPayload: savedPayload == freezed
          ? _value.savedPayload
          : savedPayload // ignore: cast_nullable_to_non_nullable
              as SavedPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileModel implements _UserProfileModel {
  const _$_UserProfileModel(
      {required this.type,
      required this.name,
      required this.config,
      required this.project,
      required this.tokenPowerSwitch,
      required this.tokensMined,
      required this.id,
      required this.savedPayload});

  factory _$_UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileModelFromJson(json);

  @override
  final String type;
  @override
  final String name;
  @override
  final String config;
  @override
  final String project;
  @override
  final TokenPowerSwitch tokenPowerSwitch;
  @override
  final TokensMined tokensMined;
  @override
  final String id;
  @override
  final SavedPayload savedPayload;

  @override
  String toString() {
    return 'UserProfileModel(type: $type, name: $name, config: $config, project: $project, tokenPowerSwitch: $tokenPowerSwitch, tokensMined: $tokensMined, id: $id, savedPayload: $savedPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.tokenPowerSwitch, tokenPowerSwitch) ||
                other.tokenPowerSwitch == tokenPowerSwitch) &&
            (identical(other.tokensMined, tokensMined) ||
                other.tokensMined == tokensMined) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.savedPayload, savedPayload) ||
                other.savedPayload == savedPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, name, config, project,
      tokenPowerSwitch, tokensMined, id, savedPayload);

  @JsonKey(ignore: true)
  @override
  _$UserProfileModelCopyWith<_UserProfileModel> get copyWith =>
      __$UserProfileModelCopyWithImpl<_UserProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileModelToJson(this);
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
      {required String type,
      required String name,
      required String config,
      required String project,
      required TokenPowerSwitch tokenPowerSwitch,
      required TokensMined tokensMined,
      required String id,
      required SavedPayload savedPayload}) = _$_UserProfileModel;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModel.fromJson;

  @override
  String get type;
  @override
  String get name;
  @override
  String get config;
  @override
  String get project;
  @override
  TokenPowerSwitch get tokenPowerSwitch;
  @override
  TokensMined get tokensMined;
  @override
  String get id;
  @override
  SavedPayload get savedPayload;
  @override
  @JsonKey(ignore: true)
  _$UserProfileModelCopyWith<_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedPayload _$SavedPayloadFromJson(Map<String, dynamic> json) {
  return _SavedPayload.fromJson(json);
}

/// @nodoc
class _$SavedPayloadTearOff {
  const _$SavedPayloadTearOff();

  _SavedPayload call(
      {required Position position,
      required Position targetPosition,
      required FloatingObject floatingObject,
      required UiObject uiObject}) {
    return _SavedPayload(
      position: position,
      targetPosition: targetPosition,
      floatingObject: floatingObject,
      uiObject: uiObject,
    );
  }

  SavedPayload fromJson(Map<String, Object?> json) {
    return SavedPayload.fromJson(json);
  }
}

/// @nodoc
const $SavedPayload = _$SavedPayloadTearOff();

/// @nodoc
mixin _$SavedPayload {
  Position get position => throw _privateConstructorUsedError;
  Position get targetPosition => throw _privateConstructorUsedError;
  FloatingObject get floatingObject => throw _privateConstructorUsedError;
  UiObject get uiObject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPayloadCopyWith<SavedPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPayloadCopyWith<$Res> {
  factory $SavedPayloadCopyWith(
          SavedPayload value, $Res Function(SavedPayload) then) =
      _$SavedPayloadCopyWithImpl<$Res>;
  $Res call(
      {Position position,
      Position targetPosition,
      FloatingObject floatingObject,
      UiObject uiObject});

  $PositionCopyWith<$Res> get position;
  $PositionCopyWith<$Res> get targetPosition;
  $FloatingObjectCopyWith<$Res> get floatingObject;
  $UiObjectCopyWith<$Res> get uiObject;
}

/// @nodoc
class _$SavedPayloadCopyWithImpl<$Res> implements $SavedPayloadCopyWith<$Res> {
  _$SavedPayloadCopyWithImpl(this._value, this._then);

  final SavedPayload _value;
  // ignore: unused_field
  final $Res Function(SavedPayload) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? targetPosition = freezed,
    Object? floatingObject = freezed,
    Object? uiObject = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      targetPosition: targetPosition == freezed
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as Position,
      floatingObject: floatingObject == freezed
          ? _value.floatingObject
          : floatingObject // ignore: cast_nullable_to_non_nullable
              as FloatingObject,
      uiObject: uiObject == freezed
          ? _value.uiObject
          : uiObject // ignore: cast_nullable_to_non_nullable
              as UiObject,
    ));
  }

  @override
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }

  @override
  $PositionCopyWith<$Res> get targetPosition {
    return $PositionCopyWith<$Res>(_value.targetPosition, (value) {
      return _then(_value.copyWith(targetPosition: value));
    });
  }

  @override
  $FloatingObjectCopyWith<$Res> get floatingObject {
    return $FloatingObjectCopyWith<$Res>(_value.floatingObject, (value) {
      return _then(_value.copyWith(floatingObject: value));
    });
  }

  @override
  $UiObjectCopyWith<$Res> get uiObject {
    return $UiObjectCopyWith<$Res>(_value.uiObject, (value) {
      return _then(_value.copyWith(uiObject: value));
    });
  }
}

/// @nodoc
abstract class _$SavedPayloadCopyWith<$Res>
    implements $SavedPayloadCopyWith<$Res> {
  factory _$SavedPayloadCopyWith(
          _SavedPayload value, $Res Function(_SavedPayload) then) =
      __$SavedPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {Position position,
      Position targetPosition,
      FloatingObject floatingObject,
      UiObject uiObject});

  @override
  $PositionCopyWith<$Res> get position;
  @override
  $PositionCopyWith<$Res> get targetPosition;
  @override
  $FloatingObjectCopyWith<$Res> get floatingObject;
  @override
  $UiObjectCopyWith<$Res> get uiObject;
}

/// @nodoc
class __$SavedPayloadCopyWithImpl<$Res> extends _$SavedPayloadCopyWithImpl<$Res>
    implements _$SavedPayloadCopyWith<$Res> {
  __$SavedPayloadCopyWithImpl(
      _SavedPayload _value, $Res Function(_SavedPayload) _then)
      : super(_value, (v) => _then(v as _SavedPayload));

  @override
  _SavedPayload get _value => super._value as _SavedPayload;

  @override
  $Res call({
    Object? position = freezed,
    Object? targetPosition = freezed,
    Object? floatingObject = freezed,
    Object? uiObject = freezed,
  }) {
    return _then(_SavedPayload(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      targetPosition: targetPosition == freezed
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as Position,
      floatingObject: floatingObject == freezed
          ? _value.floatingObject
          : floatingObject // ignore: cast_nullable_to_non_nullable
              as FloatingObject,
      uiObject: uiObject == freezed
          ? _value.uiObject
          : uiObject // ignore: cast_nullable_to_non_nullable
              as UiObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedPayload implements _SavedPayload {
  const _$_SavedPayload(
      {required this.position,
      required this.targetPosition,
      required this.floatingObject,
      required this.uiObject});

  factory _$_SavedPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SavedPayloadFromJson(json);

  @override
  final Position position;
  @override
  final Position targetPosition;
  @override
  final FloatingObject floatingObject;
  @override
  final UiObject uiObject;

  @override
  String toString() {
    return 'SavedPayload(position: $position, targetPosition: $targetPosition, floatingObject: $floatingObject, uiObject: $uiObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedPayload &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.targetPosition, targetPosition) ||
                other.targetPosition == targetPosition) &&
            (identical(other.floatingObject, floatingObject) ||
                other.floatingObject == floatingObject) &&
            (identical(other.uiObject, uiObject) ||
                other.uiObject == uiObject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, position, targetPosition, floatingObject, uiObject);

  @JsonKey(ignore: true)
  @override
  _$SavedPayloadCopyWith<_SavedPayload> get copyWith =>
      __$SavedPayloadCopyWithImpl<_SavedPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedPayloadToJson(this);
  }
}

abstract class _SavedPayload implements SavedPayload {
  const factory _SavedPayload(
      {required Position position,
      required Position targetPosition,
      required FloatingObject floatingObject,
      required UiObject uiObject}) = _$_SavedPayload;

  factory _SavedPayload.fromJson(Map<String, dynamic> json) =
      _$_SavedPayload.fromJson;

  @override
  Position get position;
  @override
  Position get targetPosition;
  @override
  FloatingObject get floatingObject;
  @override
  UiObject get uiObject;
  @override
  @JsonKey(ignore: true)
  _$SavedPayloadCopyWith<_SavedPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

FloatingObject _$FloatingObjectFromJson(Map<String, dynamic> json) {
  return _FloatingObject.fromJson(json);
}

/// @nodoc
class _$FloatingObjectTearOff {
  const _$FloatingObjectTearOff();

  _FloatingObject call(
      {required bool isPinned,
      required bool isFrozen,
      required bool isCollapsed,
      required int angleToParent,
      required int distanceToParent,
      required int arrangementStyle}) {
    return _FloatingObject(
      isPinned: isPinned,
      isFrozen: isFrozen,
      isCollapsed: isCollapsed,
      angleToParent: angleToParent,
      distanceToParent: distanceToParent,
      arrangementStyle: arrangementStyle,
    );
  }

  FloatingObject fromJson(Map<String, Object?> json) {
    return FloatingObject.fromJson(json);
  }
}

/// @nodoc
const $FloatingObject = _$FloatingObjectTearOff();

/// @nodoc
mixin _$FloatingObject {
  bool get isPinned => throw _privateConstructorUsedError;
  bool get isFrozen => throw _privateConstructorUsedError;
  bool get isCollapsed => throw _privateConstructorUsedError;
  int get angleToParent => throw _privateConstructorUsedError;
  int get distanceToParent => throw _privateConstructorUsedError;
  int get arrangementStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloatingObjectCopyWith<FloatingObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloatingObjectCopyWith<$Res> {
  factory $FloatingObjectCopyWith(
          FloatingObject value, $Res Function(FloatingObject) then) =
      _$FloatingObjectCopyWithImpl<$Res>;
  $Res call(
      {bool isPinned,
      bool isFrozen,
      bool isCollapsed,
      int angleToParent,
      int distanceToParent,
      int arrangementStyle});
}

/// @nodoc
class _$FloatingObjectCopyWithImpl<$Res>
    implements $FloatingObjectCopyWith<$Res> {
  _$FloatingObjectCopyWithImpl(this._value, this._then);

  final FloatingObject _value;
  // ignore: unused_field
  final $Res Function(FloatingObject) _then;

  @override
  $Res call({
    Object? isPinned = freezed,
    Object? isFrozen = freezed,
    Object? isCollapsed = freezed,
    Object? angleToParent = freezed,
    Object? distanceToParent = freezed,
    Object? arrangementStyle = freezed,
  }) {
    return _then(_value.copyWith(
      isPinned: isPinned == freezed
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrozen: isFrozen == freezed
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool,
      isCollapsed: isCollapsed == freezed
          ? _value.isCollapsed
          : isCollapsed // ignore: cast_nullable_to_non_nullable
              as bool,
      angleToParent: angleToParent == freezed
          ? _value.angleToParent
          : angleToParent // ignore: cast_nullable_to_non_nullable
              as int,
      distanceToParent: distanceToParent == freezed
          ? _value.distanceToParent
          : distanceToParent // ignore: cast_nullable_to_non_nullable
              as int,
      arrangementStyle: arrangementStyle == freezed
          ? _value.arrangementStyle
          : arrangementStyle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FloatingObjectCopyWith<$Res>
    implements $FloatingObjectCopyWith<$Res> {
  factory _$FloatingObjectCopyWith(
          _FloatingObject value, $Res Function(_FloatingObject) then) =
      __$FloatingObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPinned,
      bool isFrozen,
      bool isCollapsed,
      int angleToParent,
      int distanceToParent,
      int arrangementStyle});
}

/// @nodoc
class __$FloatingObjectCopyWithImpl<$Res>
    extends _$FloatingObjectCopyWithImpl<$Res>
    implements _$FloatingObjectCopyWith<$Res> {
  __$FloatingObjectCopyWithImpl(
      _FloatingObject _value, $Res Function(_FloatingObject) _then)
      : super(_value, (v) => _then(v as _FloatingObject));

  @override
  _FloatingObject get _value => super._value as _FloatingObject;

  @override
  $Res call({
    Object? isPinned = freezed,
    Object? isFrozen = freezed,
    Object? isCollapsed = freezed,
    Object? angleToParent = freezed,
    Object? distanceToParent = freezed,
    Object? arrangementStyle = freezed,
  }) {
    return _then(_FloatingObject(
      isPinned: isPinned == freezed
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrozen: isFrozen == freezed
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool,
      isCollapsed: isCollapsed == freezed
          ? _value.isCollapsed
          : isCollapsed // ignore: cast_nullable_to_non_nullable
              as bool,
      angleToParent: angleToParent == freezed
          ? _value.angleToParent
          : angleToParent // ignore: cast_nullable_to_non_nullable
              as int,
      distanceToParent: distanceToParent == freezed
          ? _value.distanceToParent
          : distanceToParent // ignore: cast_nullable_to_non_nullable
              as int,
      arrangementStyle: arrangementStyle == freezed
          ? _value.arrangementStyle
          : arrangementStyle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FloatingObject implements _FloatingObject {
  const _$_FloatingObject(
      {required this.isPinned,
      required this.isFrozen,
      required this.isCollapsed,
      required this.angleToParent,
      required this.distanceToParent,
      required this.arrangementStyle});

  factory _$_FloatingObject.fromJson(Map<String, dynamic> json) =>
      _$$_FloatingObjectFromJson(json);

  @override
  final bool isPinned;
  @override
  final bool isFrozen;
  @override
  final bool isCollapsed;
  @override
  final int angleToParent;
  @override
  final int distanceToParent;
  @override
  final int arrangementStyle;

  @override
  String toString() {
    return 'FloatingObject(isPinned: $isPinned, isFrozen: $isFrozen, isCollapsed: $isCollapsed, angleToParent: $angleToParent, distanceToParent: $distanceToParent, arrangementStyle: $arrangementStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FloatingObject &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.isFrozen, isFrozen) ||
                other.isFrozen == isFrozen) &&
            (identical(other.isCollapsed, isCollapsed) ||
                other.isCollapsed == isCollapsed) &&
            (identical(other.angleToParent, angleToParent) ||
                other.angleToParent == angleToParent) &&
            (identical(other.distanceToParent, distanceToParent) ||
                other.distanceToParent == distanceToParent) &&
            (identical(other.arrangementStyle, arrangementStyle) ||
                other.arrangementStyle == arrangementStyle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPinned, isFrozen, isCollapsed,
      angleToParent, distanceToParent, arrangementStyle);

  @JsonKey(ignore: true)
  @override
  _$FloatingObjectCopyWith<_FloatingObject> get copyWith =>
      __$FloatingObjectCopyWithImpl<_FloatingObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloatingObjectToJson(this);
  }
}

abstract class _FloatingObject implements FloatingObject {
  const factory _FloatingObject(
      {required bool isPinned,
      required bool isFrozen,
      required bool isCollapsed,
      required int angleToParent,
      required int distanceToParent,
      required int arrangementStyle}) = _$_FloatingObject;

  factory _FloatingObject.fromJson(Map<String, dynamic> json) =
      _$_FloatingObject.fromJson;

  @override
  bool get isPinned;
  @override
  bool get isFrozen;
  @override
  bool get isCollapsed;
  @override
  int get angleToParent;
  @override
  int get distanceToParent;
  @override
  int get arrangementStyle;
  @override
  @JsonKey(ignore: true)
  _$FloatingObjectCopyWith<_FloatingObject> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
class _$PositionTearOff {
  const _$PositionTearOff();

  _Position call({required double x, required double y}) {
    return _Position(
      x: x,
      y: y,
    );
  }

  Position fromJson(Map<String, Object?> json) {
    return Position.fromJson(json);
  }
}

/// @nodoc
const $Position = _$PositionTearOff();

/// @nodoc
mixin _$Position {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call({double x, double y});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  final Position _value;
  // ignore: unused_field
  final $Res Function(Position) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) then) =
      __$PositionCopyWithImpl<$Res>;
  @override
  $Res call({double x, double y});
}

/// @nodoc
class __$PositionCopyWithImpl<$Res> extends _$PositionCopyWithImpl<$Res>
    implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(_Position _value, $Res Function(_Position) _then)
      : super(_value, (v) => _then(v as _Position));

  @override
  _Position get _value => super._value as _Position;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_Position(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Position implements _Position {
  const _$_Position({required this.x, required this.y});

  factory _$_Position.fromJson(Map<String, dynamic> json) =>
      _$$_PositionFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'Position(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Position &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionToJson(this);
  }
}

abstract class _Position implements Position {
  const factory _Position({required double x, required double y}) = _$_Position;

  factory _Position.fromJson(Map<String, dynamic> json) = _$_Position.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$PositionCopyWith<_Position> get copyWith =>
      throw _privateConstructorUsedError;
}

UiObject _$UiObjectFromJson(Map<String, dynamic> json) {
  return _UiObject.fromJson(json);
}

/// @nodoc
class _$UiObjectTearOff {
  const _$UiObjectTearOff();

  _UiObject call({required bool isRunning}) {
    return _UiObject(
      isRunning: isRunning,
    );
  }

  UiObject fromJson(Map<String, Object?> json) {
    return UiObject.fromJson(json);
  }
}

/// @nodoc
const $UiObject = _$UiObjectTearOff();

/// @nodoc
mixin _$UiObject {
  bool get isRunning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UiObjectCopyWith<UiObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiObjectCopyWith<$Res> {
  factory $UiObjectCopyWith(UiObject value, $Res Function(UiObject) then) =
      _$UiObjectCopyWithImpl<$Res>;
  $Res call({bool isRunning});
}

/// @nodoc
class _$UiObjectCopyWithImpl<$Res> implements $UiObjectCopyWith<$Res> {
  _$UiObjectCopyWithImpl(this._value, this._then);

  final UiObject _value;
  // ignore: unused_field
  final $Res Function(UiObject) _then;

  @override
  $Res call({
    Object? isRunning = freezed,
  }) {
    return _then(_value.copyWith(
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UiObjectCopyWith<$Res> implements $UiObjectCopyWith<$Res> {
  factory _$UiObjectCopyWith(_UiObject value, $Res Function(_UiObject) then) =
      __$UiObjectCopyWithImpl<$Res>;
  @override
  $Res call({bool isRunning});
}

/// @nodoc
class __$UiObjectCopyWithImpl<$Res> extends _$UiObjectCopyWithImpl<$Res>
    implements _$UiObjectCopyWith<$Res> {
  __$UiObjectCopyWithImpl(_UiObject _value, $Res Function(_UiObject) _then)
      : super(_value, (v) => _then(v as _UiObject));

  @override
  _UiObject get _value => super._value as _UiObject;

  @override
  $Res call({
    Object? isRunning = freezed,
  }) {
    return _then(_UiObject(
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UiObject implements _UiObject {
  const _$_UiObject({required this.isRunning});

  factory _$_UiObject.fromJson(Map<String, dynamic> json) =>
      _$$_UiObjectFromJson(json);

  @override
  final bool isRunning;

  @override
  String toString() {
    return 'UiObject(isRunning: $isRunning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UiObject &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRunning);

  @JsonKey(ignore: true)
  @override
  _$UiObjectCopyWith<_UiObject> get copyWith =>
      __$UiObjectCopyWithImpl<_UiObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UiObjectToJson(this);
  }
}

abstract class _UiObject implements UiObject {
  const factory _UiObject({required bool isRunning}) = _$_UiObject;

  factory _UiObject.fromJson(Map<String, dynamic> json) = _$_UiObject.fromJson;

  @override
  bool get isRunning;
  @override
  @JsonKey(ignore: true)
  _$UiObjectCopyWith<_UiObject> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenPowerSwitch _$TokenPowerSwitchFromJson(Map<String, dynamic> json) {
  return _TokenPowerSwitch.fromJson(json);
}

/// @nodoc
class _$TokenPowerSwitchTearOff {
  const _$TokenPowerSwitchTearOff();

  _TokenPowerSwitch call(
      {required String type,
      required String name,
      required String config,
      required String project,
      required List<dynamic> tokenPowerSwitch,
      required String id,
      required SavedPayload savedPayload}) {
    return _TokenPowerSwitch(
      type: type,
      name: name,
      config: config,
      project: project,
      tokenPowerSwitch: tokenPowerSwitch,
      id: id,
      savedPayload: savedPayload,
    );
  }

  TokenPowerSwitch fromJson(Map<String, Object?> json) {
    return TokenPowerSwitch.fromJson(json);
  }
}

/// @nodoc
const $TokenPowerSwitch = _$TokenPowerSwitchTearOff();

/// @nodoc
mixin _$TokenPowerSwitch {
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get config => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;
  List<dynamic> get tokenPowerSwitch => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  SavedPayload get savedPayload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenPowerSwitchCopyWith<TokenPowerSwitch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenPowerSwitchCopyWith<$Res> {
  factory $TokenPowerSwitchCopyWith(
          TokenPowerSwitch value, $Res Function(TokenPowerSwitch) then) =
      _$TokenPowerSwitchCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String name,
      String config,
      String project,
      List<dynamic> tokenPowerSwitch,
      String id,
      SavedPayload savedPayload});

  $SavedPayloadCopyWith<$Res> get savedPayload;
}

/// @nodoc
class _$TokenPowerSwitchCopyWithImpl<$Res>
    implements $TokenPowerSwitchCopyWith<$Res> {
  _$TokenPowerSwitchCopyWithImpl(this._value, this._then);

  final TokenPowerSwitch _value;
  // ignore: unused_field
  final $Res Function(TokenPowerSwitch) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? config = freezed,
    Object? project = freezed,
    Object? tokenPowerSwitch = freezed,
    Object? id = freezed,
    Object? savedPayload = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      tokenPowerSwitch: tokenPowerSwitch == freezed
          ? _value.tokenPowerSwitch
          : tokenPowerSwitch // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      savedPayload: savedPayload == freezed
          ? _value.savedPayload
          : savedPayload // ignore: cast_nullable_to_non_nullable
              as SavedPayload,
    ));
  }

  @override
  $SavedPayloadCopyWith<$Res> get savedPayload {
    return $SavedPayloadCopyWith<$Res>(_value.savedPayload, (value) {
      return _then(_value.copyWith(savedPayload: value));
    });
  }
}

/// @nodoc
abstract class _$TokenPowerSwitchCopyWith<$Res>
    implements $TokenPowerSwitchCopyWith<$Res> {
  factory _$TokenPowerSwitchCopyWith(
          _TokenPowerSwitch value, $Res Function(_TokenPowerSwitch) then) =
      __$TokenPowerSwitchCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String name,
      String config,
      String project,
      List<dynamic> tokenPowerSwitch,
      String id,
      SavedPayload savedPayload});

  @override
  $SavedPayloadCopyWith<$Res> get savedPayload;
}

/// @nodoc
class __$TokenPowerSwitchCopyWithImpl<$Res>
    extends _$TokenPowerSwitchCopyWithImpl<$Res>
    implements _$TokenPowerSwitchCopyWith<$Res> {
  __$TokenPowerSwitchCopyWithImpl(
      _TokenPowerSwitch _value, $Res Function(_TokenPowerSwitch) _then)
      : super(_value, (v) => _then(v as _TokenPowerSwitch));

  @override
  _TokenPowerSwitch get _value => super._value as _TokenPowerSwitch;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? config = freezed,
    Object? project = freezed,
    Object? tokenPowerSwitch = freezed,
    Object? id = freezed,
    Object? savedPayload = freezed,
  }) {
    return _then(_TokenPowerSwitch(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      tokenPowerSwitch: tokenPowerSwitch == freezed
          ? _value.tokenPowerSwitch
          : tokenPowerSwitch // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      savedPayload: savedPayload == freezed
          ? _value.savedPayload
          : savedPayload // ignore: cast_nullable_to_non_nullable
              as SavedPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenPowerSwitch implements _TokenPowerSwitch {
  const _$_TokenPowerSwitch(
      {required this.type,
      required this.name,
      required this.config,
      required this.project,
      required this.tokenPowerSwitch,
      required this.id,
      required this.savedPayload});

  factory _$_TokenPowerSwitch.fromJson(Map<String, dynamic> json) =>
      _$$_TokenPowerSwitchFromJson(json);

  @override
  final String type;
  @override
  final String name;
  @override
  final String config;
  @override
  final String project;
  @override
  final List<dynamic> tokenPowerSwitch;
  @override
  final String id;
  @override
  final SavedPayload savedPayload;

  @override
  String toString() {
    return 'TokenPowerSwitch(type: $type, name: $name, config: $config, project: $project, tokenPowerSwitch: $tokenPowerSwitch, id: $id, savedPayload: $savedPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenPowerSwitch &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.project, project) || other.project == project) &&
            const DeepCollectionEquality()
                .equals(other.tokenPowerSwitch, tokenPowerSwitch) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.savedPayload, savedPayload) ||
                other.savedPayload == savedPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, name, config, project,
      const DeepCollectionEquality().hash(tokenPowerSwitch), id, savedPayload);

  @JsonKey(ignore: true)
  @override
  _$TokenPowerSwitchCopyWith<_TokenPowerSwitch> get copyWith =>
      __$TokenPowerSwitchCopyWithImpl<_TokenPowerSwitch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenPowerSwitchToJson(this);
  }
}

abstract class _TokenPowerSwitch implements TokenPowerSwitch {
  const factory _TokenPowerSwitch(
      {required String type,
      required String name,
      required String config,
      required String project,
      required List<dynamic> tokenPowerSwitch,
      required String id,
      required SavedPayload savedPayload}) = _$_TokenPowerSwitch;

  factory _TokenPowerSwitch.fromJson(Map<String, dynamic> json) =
      _$_TokenPowerSwitch.fromJson;

  @override
  String get type;
  @override
  String get name;
  @override
  String get config;
  @override
  String get project;
  @override
  List<dynamic> get tokenPowerSwitch;
  @override
  String get id;
  @override
  SavedPayload get savedPayload;
  @override
  @JsonKey(ignore: true)
  _$TokenPowerSwitchCopyWith<_TokenPowerSwitch> get copyWith =>
      throw _privateConstructorUsedError;
}

TokensMined _$TokensMinedFromJson(Map<String, dynamic> json) {
  return _TokensMined.fromJson(json);
}

/// @nodoc
class _$TokensMinedTearOff {
  const _$TokensMinedTearOff();

  _TokensMined call(
      {required String type,
      required String name,
      required String project,
      required String id,
      required SavedPayload savedPayload}) {
    return _TokensMined(
      type: type,
      name: name,
      project: project,
      id: id,
      savedPayload: savedPayload,
    );
  }

  TokensMined fromJson(Map<String, Object?> json) {
    return TokensMined.fromJson(json);
  }
}

/// @nodoc
const $TokensMined = _$TokensMinedTearOff();

/// @nodoc
mixin _$TokensMined {
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  SavedPayload get savedPayload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensMinedCopyWith<TokensMined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensMinedCopyWith<$Res> {
  factory $TokensMinedCopyWith(
          TokensMined value, $Res Function(TokensMined) then) =
      _$TokensMinedCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String name,
      String project,
      String id,
      SavedPayload savedPayload});

  $SavedPayloadCopyWith<$Res> get savedPayload;
}

/// @nodoc
class _$TokensMinedCopyWithImpl<$Res> implements $TokensMinedCopyWith<$Res> {
  _$TokensMinedCopyWithImpl(this._value, this._then);

  final TokensMined _value;
  // ignore: unused_field
  final $Res Function(TokensMined) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? project = freezed,
    Object? id = freezed,
    Object? savedPayload = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      savedPayload: savedPayload == freezed
          ? _value.savedPayload
          : savedPayload // ignore: cast_nullable_to_non_nullable
              as SavedPayload,
    ));
  }

  @override
  $SavedPayloadCopyWith<$Res> get savedPayload {
    return $SavedPayloadCopyWith<$Res>(_value.savedPayload, (value) {
      return _then(_value.copyWith(savedPayload: value));
    });
  }
}

/// @nodoc
abstract class _$TokensMinedCopyWith<$Res>
    implements $TokensMinedCopyWith<$Res> {
  factory _$TokensMinedCopyWith(
          _TokensMined value, $Res Function(_TokensMined) then) =
      __$TokensMinedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String name,
      String project,
      String id,
      SavedPayload savedPayload});

  @override
  $SavedPayloadCopyWith<$Res> get savedPayload;
}

/// @nodoc
class __$TokensMinedCopyWithImpl<$Res> extends _$TokensMinedCopyWithImpl<$Res>
    implements _$TokensMinedCopyWith<$Res> {
  __$TokensMinedCopyWithImpl(
      _TokensMined _value, $Res Function(_TokensMined) _then)
      : super(_value, (v) => _then(v as _TokensMined));

  @override
  _TokensMined get _value => super._value as _TokensMined;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? project = freezed,
    Object? id = freezed,
    Object? savedPayload = freezed,
  }) {
    return _then(_TokensMined(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      savedPayload: savedPayload == freezed
          ? _value.savedPayload
          : savedPayload // ignore: cast_nullable_to_non_nullable
              as SavedPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokensMined implements _TokensMined {
  const _$_TokensMined(
      {required this.type,
      required this.name,
      required this.project,
      required this.id,
      required this.savedPayload});

  factory _$_TokensMined.fromJson(Map<String, dynamic> json) =>
      _$$_TokensMinedFromJson(json);

  @override
  final String type;
  @override
  final String name;
  @override
  final String project;
  @override
  final String id;
  @override
  final SavedPayload savedPayload;

  @override
  String toString() {
    return 'TokensMined(type: $type, name: $name, project: $project, id: $id, savedPayload: $savedPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokensMined &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.savedPayload, savedPayload) ||
                other.savedPayload == savedPayload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, project, id, savedPayload);

  @JsonKey(ignore: true)
  @override
  _$TokensMinedCopyWith<_TokensMined> get copyWith =>
      __$TokensMinedCopyWithImpl<_TokensMined>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokensMinedToJson(this);
  }
}

abstract class _TokensMined implements TokensMined {
  const factory _TokensMined(
      {required String type,
      required String name,
      required String project,
      required String id,
      required SavedPayload savedPayload}) = _$_TokensMined;

  factory _TokensMined.fromJson(Map<String, dynamic> json) =
      _$_TokensMined.fromJson;

  @override
  String get type;
  @override
  String get name;
  @override
  String get project;
  @override
  String get id;
  @override
  SavedPayload get savedPayload;
  @override
  @JsonKey(ignore: true)
  _$TokensMinedCopyWith<_TokensMined> get copyWith =>
      throw _privateConstructorUsedError;
}
