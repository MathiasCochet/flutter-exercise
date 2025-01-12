import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_viewmodel.g.dart';

enum LoginState { idle, loading, success, error }

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() => LoginState.idle;

  Future<void> login(String username, String password) async {
    state = LoginState.loading;
    await Future.delayed(const Duration(seconds: 2));

    if (username == "test" && password == "1234") {
      state = LoginState.success;
    } else {
      state = LoginState.error;
    }
  }
}
