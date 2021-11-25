import 'package:app/feature/userprofile/state/onboarding_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingProvider =
    StateNotifierProvider<OnboardingProvider, OnboardingState>((ref) {
  return OnboardingProvider(ref.read);
});

class OnboardingProvider extends StateNotifier<OnboardingState> {
  OnboardingProvider(this._reader) : super(const OnboardingState.present(1));

  final Reader _reader;


  Future<void> createSAFork() async {
    final githubService = _reader(githubServiceProvider);
    // Let's try to create the fork first time if it doesn't exist
    var saFork = await githubService.getSAFork();
    saFork ??= await githubService.createSAFork();
    state = const OnboardingState.createFork(2);
  }

  // This function will create the user profile
  Future<void> createUserProfile() async {
    final githubService = _reader(githubServiceProvider);
    // TODO: We should let the user enter his mnemonic in the future
    // TODO: Add functionality to create a valid user profile JSON
    // TODO: Add functionality to create basic programs
    var createdContent = await githubService.addUserProfileToSAFork();
    // TODO: create a Pull request to upstream, see https://stackoverflow.com/questions/40052992/github-pull-request-api-differs-from-the-web-workflow
    //Change the state so we can show the profile
    state = const OnboardingState.createProfile(3);
  }
}
