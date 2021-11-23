import 'package:app/feature/userprofile/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/github.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {

  const factory UserProfileState.loading() = _Loading;
  const factory UserProfileState.profileLoaded(UserModel user) = _Loaded;
  const factory UserProfileState.loggedOut() = _LoggedOut;

}