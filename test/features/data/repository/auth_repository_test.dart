import 'package:flutter_exercise/features/auth/data/dto/login_response.dart';
import 'package:flutter_exercise/features/auth/data/mapper/login_credentials_mapper.dart';
import 'package:flutter_exercise/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flutter_exercise/features/auth/domain/model/login_credentials.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockAuthService mockAuthService;
  late MockSecurePreferences mockSecurePreferences;
  late AuthRepositoryImpl authRepository;

  setUp(() {
    mockAuthService = MockAuthService();
    mockSecurePreferences = MockSecurePreferences();
    authRepository = AuthRepositoryImpl(mockAuthService, mockSecurePreferences);
  });

  test('login returns true when authentication is successful', () async {
    const credentials = LoginCredentials(
      username: 'user',
      password: 'password',
    );
    final dto = LoginCredentialsMapper().toDTO(credentials);
    const tokenResponse = LoginResponse(token: 'someToken');

    when(mockAuthService.login(dto)).thenAnswer((_) async => tokenResponse);
    when(mockSecurePreferences.saveToken(any)).thenAnswer((_) async {});

    final result = await authRepository.login(credentials);

    expect(result, isTrue);
    verify(mockAuthService.login(dto)).called(1);
    verify(mockSecurePreferences.saveToken('someToken')).called(1);
  });

  test('login returns false when authentication fails', () async {
    const credentials = LoginCredentials(
      username: 'user',
      password: 'password',
    );
    final dto = LoginCredentialsMapper().toDTO(credentials);

    when(mockAuthService.login(dto)).thenThrow(Exception('Failed to login'));

    final result = await authRepository.login(credentials);

    expect(result, isFalse);
    verify(mockAuthService.login(dto)).called(1);
    verifyNever(mockSecurePreferences.saveToken(any));
  });
}
