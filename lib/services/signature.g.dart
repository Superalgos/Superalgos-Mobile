// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Signature _$$_SignatureFromJson(Map<String, dynamic> json) => _$_Signature(
      message: json['message'] as String,
      messageHash: json['messageHash'] as String,
      v: json['v'] as String,
      r: json['r'] as String,
      s: json['s'] as String,
      signature: json['signature'] as String,
    );

Map<String, dynamic> _$$_SignatureToJson(_$_Signature instance) =>
    <String, dynamic>{
      'message': instance.message,
      'messageHash': instance.messageHash,
      'v': instance.v,
      'r': instance.r,
      's': instance.s,
      'signature': instance.signature,
    };
