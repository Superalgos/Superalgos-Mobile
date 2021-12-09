import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {

  const factory OnboardingState.newProfile() = _NewProfile;
  const factory OnboardingState.updateProfile() = _PartialProfile;
  const factory OnboardingState.slideShowFinalized() = _SlideshowFinalized;
}