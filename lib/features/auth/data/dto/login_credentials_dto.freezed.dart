// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_credentials_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginCredentialsDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginCredentialsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginCredentialsDtoCopyWith<LoginCredentialsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsDtoCopyWith<$Res> {
  factory $LoginCredentialsDtoCopyWith(
          LoginCredentialsDto value, $Res Function(LoginCredentialsDto) then) =
      _$LoginCredentialsDtoCopyWithImpl<$Res, LoginCredentialsDto>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginCredentialsDtoCopyWithImpl<$Res, $Val extends LoginCredentialsDto>
    implements $LoginCredentialsDtoCopyWith<$Res> {
  _$LoginCredentialsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCredentialsDtoImplCopyWith<$Res>
    implements $LoginCredentialsDtoCopyWith<$Res> {
  factory _$$LoginCredentialsDtoImplCopyWith(_$LoginCredentialsDtoImpl value,
          $Res Function(_$LoginCredentialsDtoImpl) then) =
      __$$LoginCredentialsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginCredentialsDtoImplCopyWithImpl<$Res>
    extends _$LoginCredentialsDtoCopyWithImpl<$Res, _$LoginCredentialsDtoImpl>
    implements _$$LoginCredentialsDtoImplCopyWith<$Res> {
  __$$LoginCredentialsDtoImplCopyWithImpl(_$LoginCredentialsDtoImpl _value,
      $Res Function(_$LoginCredentialsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginCredentialsDtoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$LoginCredentialsDtoImpl
    with DiagnosticableTreeMixin
    implements _LoginCredentialsDto {
  const _$LoginCredentialsDtoImpl(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginCredentialsDto(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginCredentialsDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCredentialsDtoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of LoginCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCredentialsDtoImplCopyWith<_$LoginCredentialsDtoImpl> get copyWith =>
      __$$LoginCredentialsDtoImplCopyWithImpl<_$LoginCredentialsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCredentialsDtoImplToJson(
      this,
    );
  }
}

abstract class _LoginCredentialsDto implements LoginCredentialsDto {
  const factory _LoginCredentialsDto(
      {required final String username,
      required final String password}) = _$LoginCredentialsDtoImpl;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of LoginCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginCredentialsDtoImplCopyWith<_$LoginCredentialsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
