
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_creation_state.freezed.dart';

@freezed
class ProfileCreationState with _$ProfileCreationState {

  const factory ProfileCreationState.loading(String? mnemonic) = _Loading;
  const factory ProfileCreationState.finalized(String prvKey) = _Finalized;
}