import 'package:flutter_exercise/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flutter_exercise/features/auth/domain/model/login_credentials.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_viewmodel.g.dart';

enum LoginState { idle, loading, success, error }

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() => LoginState.idle;

  Future<void> login(String username, String password) async {
    final authRepository = ref.watch(authRepositoryProvider);
    state = LoginState.loading;

    final result = await authRepository.login(LoginCredentials(
      username: username,
      password: password,
    ));

    if (result) {
      state = LoginState.success;
    } else {
      state = LoginState.error;
    }
  }
}
