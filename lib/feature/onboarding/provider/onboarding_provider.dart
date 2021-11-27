import 'package:app/feature/onboarding/state/onboarding_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingProvider =
    StateNotifierProvider<OnboardingProvider, OnboardingState>((ref) {
  return OnboardingProvider(ref.read);
});

class OnboardingProvider extends StateNotifier<OnboardingState> {
  OnboardingProvider(this._reader) : super(const OnboardingState.initial(0));

  final Reader _reader;

  void navigate(page) {



    // state.when(
    //     initial: (page) {
    //       state = const OnboardingState.createFork(1);
    //     },
    //     createFork: (page) {
    //       state = const OnboardingState.createProfile(2);
    //     },
    //     createProfile: (page) {
    //       state = const OnboardingState.finalized();
    //     },
    //     finalized: () {});
  }

  void finalize(){
    state = const OnboardingState.slideShowFinalized();
    // state = const OnboardingState.profileCreated("prvKey");
  }


}
