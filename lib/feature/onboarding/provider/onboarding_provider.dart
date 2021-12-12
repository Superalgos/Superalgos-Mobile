import 'package:app/app/provider/app_start_provider.dart';
import 'package:app/feature/onboarding/state/onboarding_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingProvider = AutoDisposeStateNotifierProvider<OnboardingProvider, OnboardingState>((ref) {

  OnboardingState state = const OnboardingState.newProfile();
  final appProvider = ref.read(appStartProvider);

  appProvider.maybeWhen(
      onboarding: (fullOnboarding) {
        state = fullOnboarding ? const OnboardingState.newProfile() : const OnboardingState.updateProfile();
      },
      orElse: () {});

  return OnboardingProvider(state, ref.read);
});

class OnboardingProvider extends StateNotifier<OnboardingState> {
  OnboardingProvider(OnboardingState state, this._reader) : super(state);

  final Reader _reader;

  void navigate(page) {}

  void finalize() {
    state = const OnboardingState.slideShowFinalized();
  }
}
