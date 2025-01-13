import 'package:flutter_exercise/features/auth/data/dto/login_credentials_dto.dart';
import 'package:flutter_exercise/features/auth/domain/model/login_credentials.dart';

class LoginCredentialsMapper {
  LoginCredentialsDto toDTO(LoginCredentials domain) {
    return LoginCredentialsDto(
      username: domain.username,
      password: domain.password,
    );
  }
}
