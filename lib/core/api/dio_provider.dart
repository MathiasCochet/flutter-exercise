import 'package:flutter_exercise/core/preferences/secure_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

final logInterceptor = LogInterceptor(
  request: true,
  requestBody: true,
  responseHeader: true,
  responseBody: true,
  error: true,
);

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.options.headers['Content-Type'] = 'application/json';
  dio.interceptors.add(logInterceptor);

  return dio;
});

final authDioProvider = Provider<Dio>((ref) {
  final authInterceptor = ref.watch(authInterceptorProvider);
  final dio = Dio();

  dio.options.headers['Content-Type'] = 'application/json';
  dio.interceptors.add(authInterceptor);

  dio.interceptors.add(logInterceptor);

  return dio;
});

final authInterceptorProvider = Provider<AuthInterceptor>(
    (ref) => AuthInterceptor(ref.watch(securePreferencesProvider)));

class AuthInterceptor extends Interceptor {
  final SecurePreferences prefs;

  const AuthInterceptor(this.prefs);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await prefs.readToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
