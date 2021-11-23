
import 'package:app/app/state/app_start_state.dart';
import 'package:app/feature/auth/model/auth_state.dart';
import 'package:app/feature/auth/provider/auth_provider.dart';
import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/userprofile/provider/user_profile_provider.dart';
import 'package:app/feature/userprofile/state/user_profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oauth2_client/oauth2_helper.dart';

final appStartProvider =
    StateNotifierProvider<AppStartNotifier, AppStartState>((ref) {
  final loginState = ref.watch(authProvider);
  final userProfileState = ref.watch(userProfileProvider);

  late AppStartState appStartState;
  appStartState = loginState is AppAuthenticated
      ? const AppStartState.authenticated()
      : const AppStartState.initial();

  return AppStartNotifier(appStartState, ref.read, loginState, userProfileState);
});

class AppStartNotifier extends StateNotifier<AppStartState> {

  AppStartNotifier(AppStartState appStartState, this._reader, this._authState,
      this._userProfileState)
      : super(appStartState) {
    _init();
  }

  late final OAuth2Helper _oAuth2Helper =
      _reader(oauth2HelperProvider);

  final AuthState _authState;
  final UserProfileState _userProfileState;
  final Reader _reader;

  Future<void> _init() async {
    _authState.maybeWhen(
        loggedIn: () {
          state = const AppStartState.authenticated();
        },
        orElse: () {});

    _userProfileState.maybeWhen(
        loggedOut: () {
          state = const AppStartState.unauthenticated();
        },
        orElse: () {});

    final token = await _oAuth2Helper.getToken();
    if (token != null) {
      if (mounted) {
        state = const AppStartState.authenticated();
      }
    } else {
      if (mounted) {
        state = const AppStartState.unauthenticated();
      }
    }
  }
}
