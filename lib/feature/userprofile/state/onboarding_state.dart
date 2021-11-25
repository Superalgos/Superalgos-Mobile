import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {

  const factory OnboardingState.present(int page) = _Present;
  const factory OnboardingState.createFork(int page) = _CreateFork;
  const factory OnboardingState.createProfile(int page) = _CreateProfile;
  const factory OnboardingState.finalized() = _Finalized;
}