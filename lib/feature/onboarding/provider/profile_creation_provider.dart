

import 'package:app/feature/onboarding/state/profile_creation_state.dart';
import 'package:app/feature/onboarding/widget/onboarding_widget.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final profileCreationProvider =
StateNotifierProvider<ProfileCreationProvider, ProfileCreationState>((ref) {
  var userMnemonic = ref.watch(mnemonicProvider).value.text;
  return ProfileCreationProvider(ref.read, userMnemonic);
});

class ProfileCreationProvider extends StateNotifier<ProfileCreationState> {
  ProfileCreationProvider(this._reader, this._userMnemonic) : super(ProfileCreationState.loading(_userMnemonic));

  final Reader _reader;
  final String _userMnemonic;

  Future<void> startONBActions(){
    return Future.delayed(const Duration(seconds: 3), () {
      state = const ProfileCreationState.finalized("prvKey");
    });


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