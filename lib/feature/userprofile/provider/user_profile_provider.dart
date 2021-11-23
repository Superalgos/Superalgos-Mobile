import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/userprofile/model/user_model.dart';
import 'package:app/feature/userprofile/state/user_profile_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProfileProvider =
    StateNotifierProvider<UserProfileProvider, UserProfileState>((ref) {
  return UserProfileProvider(ref.read);
});

class UserProfileProvider extends StateNotifier<UserProfileState> {
  UserProfileProvider(this._reader) : super(const UserProfileState.loading()) {
    _init();
  }

  final Reader _reader;
  late final AuthRepository _authRepository = _reader(authRepositoryProvider);

  Future<void> logout() async {
    await _authRepository.signOut();
    state = const UserProfileState.loggedOut();
  }

  Future<void> _init() async {
    final githubService = _reader(githubServiceProvider);
    final userName =
        await githubService.userName().then((value) => value.login!);
    final saFork = await githubService.getSAFork();

    state = UserProfileState.profileLoaded(UserModel(
        userName: userName,
        hasSAFork: saFork == null ? false : true,
        hasSAUserProfile: false,
        saFork: saFork));
  }
}
