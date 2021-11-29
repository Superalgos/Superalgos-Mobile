// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Signature _$SignatureFromJson(Map<String, dynamic> json) {
  return _Signature.fromJson(json);
}

/// @nodoc
class _$SignatureTearOff {
  const _$SignatureTearOff();

  _Signature call(
      {required String message,
      required String messageHash,
      required String v,
      required String r,
      required String s,
      required String signature}) {
    return _Signature(
      message: message,
      messageHash: messageHash,
      v: v,
      r: r,
      s: s,
      signature: signature,
    );
  }

  Signature fromJson(Map<String, Object?> json) {
    return Signature.fromJson(json);
  }
}

/// @nodoc
const $Signature = _$SignatureTearOff();

/// @nodoc
mixin _$Signature {
  String get message => throw _privateConstructorUsedError;
  String get messageHash => throw _privateConstructorUsedError;
  String get v => throw _privateConstructorUsedError;
  String get r => throw _privateConstructorUsedError;
  String get s => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignatureCopyWith<Signature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureCopyWith<$Res> {
  factory $SignatureCopyWith(Signature value, $Res Function(Signature) then) =
      _$SignatureCopyWithImpl<$Res>;
  $Res call(
      {String message,
      String messageHash,
      String v,
      String r,
      String s,
      String signature});
}

/// @nodoc
class _$SignatureCopyWithImpl<$Res> implements $SignatureCopyWith<$Res> {
  _$SignatureCopyWithImpl(this._value, this._then);

  final Signature _value;
  // ignore: unused_field
  final $Res Function(Signature) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? messageHash = freezed,
    Object? v = freezed,
    Object? r = freezed,
    Object? s = freezed,
    Object? signature = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageHash: messageHash == freezed
          ? _value.messageHash
          : messageHash // ignore: cast_nullable_to_non_nullable
              as String,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      s: s == freezed
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignatureCopyWith<$Res> implements $SignatureCopyWith<$Res> {
  factory _$SignatureCopyWith(
          _Signature value, $Res Function(_Signature) then) =
      __$SignatureCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message,
      String messageHash,
      String v,
      String r,
      String s,
      String signature});
}

/// @nodoc
class __$SignatureCopyWithImpl<$Res> extends _$SignatureCopyWithImpl<$Res>
    implements _$SignatureCopyWith<$Res> {
  __$SignatureCopyWithImpl(_Signature _value, $Res Function(_Signature) _then)
      : super(_value, (v) => _then(v as _Signature));

  @override
  _Signature get _value => super._value as _Signature;

  @override
  $Res call({
    Object? message = freezed,
    Object? messageHash = freezed,
    Object? v = freezed,
    Object? r = freezed,
    Object? s = freezed,
    Object? signature = freezed,
  }) {
    return _then(_Signature(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageHash: messageHash == freezed
          ? _value.messageHash
          : messageHash // ignore: cast_nullable_to_non_nullable
              as String,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      s: s == freezed
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Signature implements _Signature {
  const _$_Signature(
      {required this.message,
      required this.messageHash,
      required this.v,
      required this.r,
      required this.s,
      required this.signature});

  factory _$_Signature.fromJson(Map<String, dynamic> json) =>
      _$$_SignatureFromJson(json);

  @override
  final String message;
  @override
  final String messageHash;
  @override
  final String v;
  @override
  final String r;
  @override
  final String s;
  @override
  final String signature;

  @override
  String toString() {
    return 'Signature(message: $message, messageHash: $messageHash, v: $v, r: $r, s: $s, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Signature &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageHash, messageHash) ||
                other.messageHash == messageHash) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, messageHash, v, r, s, signature);

  @JsonKey(ignore: true)
  @override
  _$SignatureCopyWith<_Signature> get copyWith =>
      __$SignatureCopyWithImpl<_Signature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignatureToJson(this);
  }
}

abstract class _Signature implements Signature {
  const factory _Signature(
      {required String message,
      required String messageHash,
      required String v,
      required String r,
      required String s,
      required String signature}) = _$_Signature;

  factory _Signature.fromJson(Map<String, dynamic> json) =
      _$_Signature.fromJson;

  @override
  String get message;
  @override
  String get messageHash;
  @override
  String get v;
  @override
  String get r;
  @override
  String get s;
  @override
  String get signature;
  @override
  @JsonKey(ignore: true)
  _$SignatureCopyWith<_Signature> get copyWith =>
      throw _privateConstructorUsedError;
}
