import 'package:app/feature/onboarding/state/onboarding_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingProvider =
    AutoDisposeStateNotifierProvider<OnboardingProvider, OnboardingState>((ref) {
  return OnboardingProvider(ref.read);
});

class OnboardingProvider extends StateNotifier<OnboardingState> {
  OnboardingProvider(this._reader) : super(const OnboardingState.initial());

  final Reader _reader;

  void navigate(page) {

  }

  void finalize(){
    state = const OnboardingState.slideShowFinalized();
    // state = const OnboardingState.profileCreated("prvKey");
  }


}
