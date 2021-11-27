import 'package:app/utils/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loggedIn() = LoggedIn;
  const factory AuthState.error(AppException error) = _Error;
}
