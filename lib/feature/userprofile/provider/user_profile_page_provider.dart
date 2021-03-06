import 'package:app/feature/auth/provider/auth_provider.dart';
import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/onboarding/provider/onboarding_provider.dart';
import 'package:app/feature/onboarding/state/onboarding_state.dart';
import 'package:app/feature/userprofile/state/user_profile_page_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProfilePageProvider =
    StateNotifierProvider<UserProfilePageProvider, UserProfilePageState>((ref) {
      ref.watch(authProvider);
  return UserProfilePageProvider(ref.read);
});

class UserProfilePageProvider extends StateNotifier<UserProfilePageState> {
  UserProfilePageProvider(this._reader)
      : super(const UserProfilePageState.loading()) {}

  final Reader _reader;
  late final AuthRepository _authRepository = _reader(authRepositoryProvider);

  Future<void> logout() async {
    await _authRepository.signOut();
    state = const UserProfilePageState.loggedOut();
  }

}
