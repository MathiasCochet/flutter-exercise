import 'package:flutter_exercise/core/preferences/secure_preferences.dart';
import 'package:flutter_exercise/features/auth/data/service/auth_service.dart';
import 'package:flutter_exercise/features/auth/domain/repository/auth_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  AuthService,
  SecurePreferences,
  AuthRepository,
])
void main() {}
