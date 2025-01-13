import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_credentials_dto.freezed.dart';
part 'login_credentials_dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class LoginCredentialsDto with _$LoginCredentialsDto {
  const factory LoginCredentialsDto({
    required String username,
    required String password,
  }) = _LoginCredentialsDto;
}
