
import 'package:app/feature/auth/model/auth_state.dart';
import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  return AuthProvider(ref.read);
});

class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider(this._reader) : super(const AuthState.initial()) {}

  final Reader _reader;
  late final AuthRepository _authRepository = _reader(authRepositoryProvider);

  Future<void> login() async {
    state = await _authRepository.signIn();
  }

}
