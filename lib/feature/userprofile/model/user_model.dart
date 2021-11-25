
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/github.dart';

part 'user_model.freezed.dart';


@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required String userName,
    String? userProfileContent,
    Repository? saFork,
}) = _UserModel;
}