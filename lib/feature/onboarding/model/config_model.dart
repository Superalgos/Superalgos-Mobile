import 'package:app/services/signature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'config_model.freezed.dart';
part 'config_model.g.dart';

Config configFromJson(String str) => Config.fromJson(json.decode(str));

String configToJson(Config data) => json.encode(data.toJson());

@freezed
class Config with _$Config {
  const factory Config({
    required Signature signature,
    required String codeName,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}


