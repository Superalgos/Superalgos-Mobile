import 'package:app/app/state/app_start_state.dart';
import 'package:app/feature/auth/model/auth_state.dart';
import 'package:app/feature/auth/provider/auth_provider.dart';
import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/auth/repository/github_oauth_helper.dart';
import 'package:app/feature/onboarding/provider/onboarding_provider.dart';
import 'package:app/feature/onboarding/provider/profile_creation_provider.dart';
import 'package:app/feature/userprofile/provider/user_profile_page_provider.dart';
import 'package:app/feature/userprofile/provider/user_profile_provider.dart';
import 'package:app/feature/userprofile/state/user_profile_page_state.dart';
import 'package:app/feature/userprofile/state/user_profile_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oauth2_client/oauth2_helper.dart';

final appStartProvider =
    StateNotifierProvider<AppStartNotifier, AppStartState>((ref) {
  final loginState = ref.watch(authProvider);
  final userProfilePageState = ref.watch(userProfilePageProvider);

  AppStartState appStartState = const AppStartState.initial();
  userProfilePageState.maybeWhen(
      loggedOut: () {
        appStartState = const AppStartState.unauthenticated();
      },
      orElse: () {});


  return AppStartNotifier(appStartState, ref.read, loginState);
});

class AppStartNotifier extends StateNotifier<AppStartState> {
  AppStartNotifier(AppStartState appStartState, this._reader, this._authState)
      : super(appStartState) {
    _init();
  }

  late final GithubOauthHelper _oAuth2Helper = _reader(oauth2HelperProvider);
  late final _githubService = _reader(githubServiceProvider);

  final AuthState _authState;
  final Reader _reader;

  void finalizedOnboarding() {
    state = const AppStartState.authenticated();
  }

  Future<void> _init() async {
    final token = await _oAuth2Helper.getTokenFromStorage();
    if (token != null) {
      try {
        final saFork = await _githubService.getSAFork();
        final userProfileContent = await _githubService.getUserProfileFromGit();
        if (mounted) {
          if (saFork == null || userProfileContent == null) {
            state = const AppStartState.onboarding();
          } else {
            state = const AppStartState.authenticated();
          }
        }
      } catch (_) {
        state = const AppStartState.unauthenticated();
      }
    } else {
      if (mounted) {
        state = const AppStartState.unauthenticated();
      }
    }
  }
}
