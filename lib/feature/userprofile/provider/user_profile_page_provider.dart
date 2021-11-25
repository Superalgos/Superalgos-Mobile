import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/userprofile/provider/onboarding_provider.dart';
import 'package:app/feature/userprofile/state/onboarding_state.dart';
import 'package:app/feature/userprofile/state/user_profile_page_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProfilePageProvider =
    StateNotifierProvider<UserProfilePageProvider, UserProfilePageState>((ref) {
  final onboardingState = ref.watch(onboardingProvider);
  return UserProfilePageProvider(ref.read, onboardingState);
});

class UserProfilePageProvider extends StateNotifier<UserProfilePageState> {
  UserProfilePageProvider(this._reader, this._onboardingState)
      : super(const UserProfilePageState.loading()) {
    _init();
  }

  final Reader _reader;
  final OnboardingState _onboardingState;
  late final AuthRepository _authRepository = _reader(authRepositoryProvider);

  Future<void> logout() async {
    await _authRepository.signOut();
    state = const UserProfilePageState.loggedOut();
  }

  // This function will check if SA fork and userprofile exits
  // if at least one is missing the onboarding widget should be rendered
  // the logic for the creation will be achieved by "createUserProfile" function
  // in the UserProfile provider
  Future<void> _init() async {
    final githubService = _reader(githubServiceProvider);
    final saFork = await githubService.getSAFork();
    final userProfileContent = await githubService.getUserProfileFromGit();
    state = const UserProfilePageState.userProfile();
    // _onboardingState.maybeWhen(
    //     finalized: () {
    //       state = const UserProfilePageState.userProfile();
    //     },
    //     orElse: () {});

    // if (saFork == null || userProfileContent == null) {
    //   state = const UserProfilePageState.onboarding();
    // } else {
    //   state = const UserProfilePageState.userProfile();
    // }
  }
}
