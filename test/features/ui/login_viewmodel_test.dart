import 'package:flutter_exercise/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flutter_exercise/features/auth/domain/model/login_credentials.dart';
import 'package:flutter_exercise/features/auth/ui/login_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';

void main() {
  late MockAuthRepository mockAuthRepository;
  late ProviderContainer container;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(mockAuthRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  test('Initial state is LoginState.idle', () {
    final viewModel = container.read(loginViewModelProvider);

    expect(viewModel, LoginState.idle);
  });

  test('Login sets state to loading, then success on success', () async {
    when(mockAuthRepository.login(any)).thenAnswer((_) async => true);

    final notifier = container.read(loginViewModelProvider.notifier);

    final future = notifier.login('user', 'password');

    expect(notifier.state, LoginState.loading);

    await future;

    expect(notifier.state, LoginState.success);
    verify(mockAuthRepository.login(argThat(
      predicate<LoginCredentials>(
        (credentials) =>
            credentials.username == 'user' &&
            credentials.password == 'password',
      ),
    ))).called(1);
  });

  test('Login sets state to loading, then error on failure', () async {
    when(mockAuthRepository.login(any)).thenAnswer((_) async => false);

    final notifier = container.read(loginViewModelProvider.notifier);

    final future = notifier.login('user', 'wrong-password');

    expect(notifier.state, LoginState.loading);

    await future;

    expect(notifier.state, LoginState.error);
    verify(mockAuthRepository.login(argThat(
      predicate<LoginCredentials>(
        (credentials) =>
            credentials.username == 'user' &&
            credentials.password == 'wrong-password',
      ),
    ))).called(1);
  });
}
