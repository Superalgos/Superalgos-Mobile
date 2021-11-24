import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/userprofile/state/user_profile_page_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProfilePageProvider =
StateNotifierProvider<UserProfilePageProvider, UserProfilePageState>((ref) {
  return UserProfilePageProvider(ref.read);
});

class UserProfilePageProvider extends StateNotifier<UserProfilePageState> {
  UserProfilePageProvider(this._reader)
      : super(const UserProfilePageState.loading()) {
    _init();
  }

  final Reader _reader;
  late final AuthRepository _authRepository = _reader(authRepositoryProvider);

  Future<void> logout() async {
    await _authRepository.signOut();
    state = const UserProfilePageState.loggedOut();
  }

  // This function will create the user profile
  Future<void> createUserProfile() async {
    // First let's render the loading widget
    state = const UserProfilePageState.loading();
    // inject the github service
    final githubService = _reader(githubServiceProvider);
    // Let's try to create the fork first time if it doesn't exist
    var saFork = await githubService.getSAFork();
    saFork ??= await githubService.createSAFork();
    // TODO: We should let the user enter his mnemonic in the future
    // TODO: Add functionality to create a valid user profile JSON
    // TODO: Add functionality to create basic programs
    var createdContent = await githubService.addUserProfileToSAFork();
    // TODO: create a Pull request to upstream, see https://stackoverflow.com/questions/40052992/github-pull-request-api-differs-from-the-web-workflow
    //Change the state so we can show the profile
    state = const UserProfilePageState.userProfile();
  }

  // This function will check if SA fork and userprofile exits
  // if at least one is missing the onboarding widget should be rendered
  // the logic for the creation will be achieved by "createUserProfile" function
  // in the UserProfile provider
  Future<void> _init() async {
    final githubService = _reader(githubServiceProvider);
    final saFork = await githubService.getSAFork();
    final userProfileContent = await githubService.getUserProfileFromGit();

    if (saFork == null || userProfileContent == null) {
      state = const UserProfilePageState.onboarding();
    } else {
      state = const UserProfilePageState.userProfile();
    }
  }
}
