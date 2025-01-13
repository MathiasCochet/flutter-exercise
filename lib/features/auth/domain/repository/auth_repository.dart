import 'package:flutter_exercise/features/auth/domain/model/login_credentials.dart';

abstract class AuthRepository {
  Future<bool> login(LoginCredentials credentials);
  Future<void> logout();
}
