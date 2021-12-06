// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secrets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Secrets _$SecretsFromJson(Map<String, dynamic> json) => Secrets(
      secrets: (json['secrets'] as List<dynamic>)
          .map((e) => Secret.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SecretsToJson(Secrets instance) => <String, dynamic>{
      'secrets': instance.secrets,
    };

Secret _$SecretFromJson(Map<String, dynamic> json) => Secret(
      nodeId: json['nodeId'] as String,
      nodeName: json['nodeName'] as String,
      nodeType: json['nodeType'] as String,
      nodeCodeName: json['nodeCodeName'] as String,
      signingAccountNodeId: json['signingAccountNodeId'] as String,
      blockchainAccount: json['blockchainAccount'] as String,
      privateKey: json['privateKey'] as String,
      userProfileHandle: json['userProfileHandle'] as String,
      userProfileId: json['userProfileId'] as String,
    );

Map<String, dynamic> _$SecretToJson(Secret instance) => <String, dynamic>{
      'nodeId': instance.nodeId,
      'nodeName': instance.nodeName,
      'nodeType': instance.nodeType,
      'nodeCodeName': instance.nodeCodeName,
      'signingAccountNodeId': instance.signingAccountNodeId,
      'blockchainAccount': instance.blockchainAccount,
      'privateKey': instance.privateKey,
      'userProfileHandle': instance.userProfileHandle,
      'userProfileId': instance.userProfileId,
    };
