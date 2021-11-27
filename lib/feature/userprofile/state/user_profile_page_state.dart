import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_profile_page_state.freezed.dart';

@freezed
class UserProfilePageState with _$UserProfilePageState {

  const factory UserProfilePageState.loading() = _Loading;
  const factory UserProfilePageState.loggedOut() = _LoggedOut;

}