

import 'package:app/feature/onboarding/state/profile_creation_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final profileCreationProvider =
StateNotifierProvider<ProfileCreationProvider, ProfileCreationState>((ref) {
  return ProfileCreationProvider(ref.read);
});

class ProfileCreationProvider extends StateNotifier<ProfileCreationState> {
  ProfileCreationProvider(this._reader) : super(const ProfileCreationState.loading());

  final Reader _reader;

  void startONBActions(){
    state = const ProfileCreationState.finalized("prvKey");

  }

  Future<void> createSAFork() async {
    final githubService = _reader(githubServiceProvider);
    // Let's try to create the fork first time if it doesn't exist
    var saFork = await githubService.getSAFork();
    saFork ??= await githubService.createSAFork();
    // state = const OnboardingState.forkCreated();
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
    // state = const OnboardingState.profileCreated("prvKey");
  }

}