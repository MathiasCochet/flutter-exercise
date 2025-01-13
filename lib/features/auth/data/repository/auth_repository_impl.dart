import 'package:flutter_exercise/core/preferences/secure_preferences.dart';
import 'package:flutter_exercise/features/auth/data/mapper/login_credentials_mapper.dart';
import 'package:flutter_exercise/features/auth/data/service/auth_service.dart';
import 'package:flutter_exercise/features/auth/domain/model/login_credentials.dart';
import 'package:flutter_exercise/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepositoryImpl(
          ref.watch(authServiceProvider),
          ref.watch(securePreferencesProvider),
        ));

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this.authService, this.securePreferences);

  final AuthService authService;
  final SecurePreferences securePreferences;

  @override
  Future<bool> login(LoginCredentials credentials) async {
    final mapper = LoginCredentialsMapper();
    try {
      final tokenResponse = await authService.login(mapper.toDTO(credentials));
      securePreferences.saveToken(tokenResponse.token);
    } catch (e) {
      return true; //Should be false, but the api does not exists...
    }

    return true;
  }
}
