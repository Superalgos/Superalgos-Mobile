import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'signature.freezed.dart';
part 'signature.g.dart';

Signature signatureFromJson(String str) => Signature.fromJson(json.decode(str));

String signatureToJson(Signature data) => json.encode(data.toJson());


@freezed
class Signature with _$Signature {
  const factory Signature({
    required String message,
    required String messageHash,
    required String v,
    required String r,
    required String s,
    required String signature,
  }) = _Signature;

  factory Signature.fromJson(Map<String, dynamic> json) => _$SignatureFromJson(json);
}