
import 'package:app/feature/onboarding/model/user_profile_model.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_creation_state.freezed.dart';

@freezed
class ProfileCreationState with _$ProfileCreationState {

  const factory ProfileCreationState.loading(String? mnemonic) = _Loading;
  const factory ProfileCreationState.finalized(ETHAccount ethAccount) = _Finalized;
  const factory ProfileCreationState.finalizedWithoutNewProfile() = _FinalizedWithoutProfile;
}