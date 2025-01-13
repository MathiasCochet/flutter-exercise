import 'package:dio/dio.dart';
import 'package:flutter_exercise/core/api/config.dart';
import 'package:flutter_exercise/core/api/dio_provider.dart';
import 'package:flutter_exercise/features/auth/data/dto/login_credentials_dto.dart';
import 'package:flutter_exercise/features/auth/data/dto/login_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  final dio = ref.read(dioProvider);
  return AuthService(dio);
});

@RestApi(baseUrl: baseURL)
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST("login")
  Future<LoginResponse> login(
    @Body() LoginCredentialsDto credentials,
  );

  @POST("logout")
  @Header("Authorization")
  Future<void> logout();
}
