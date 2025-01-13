// Mocks generated by Mockito 5.4.5 from annotations
// in flutter_exercise/test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_exercise/core/preferences/secure_preferences.dart'
    as _i6;
import 'package:flutter_exercise/features/auth/data/dto/login_credentials_dto.dart'
    as _i5;
import 'package:flutter_exercise/features/auth/data/dto/login_response.dart'
    as _i2;
import 'package:flutter_exercise/features/auth/data/service/auth_service.dart'
    as _i3;
import 'package:flutter_exercise/features/auth/domain/model/login_credentials.dart'
    as _i8;
import 'package:flutter_exercise/features/auth/domain/repository/auth_repository.dart'
    as _i7;
import 'package:flutter_exercise/features/blog/data/dto/blog_post_dto.dart'
    as _i10;
import 'package:flutter_exercise/features/blog/data/mapper/blog_posts_mapper.dart'
    as _i13;
import 'package:flutter_exercise/features/blog/data/service/blog_service.dart'
    as _i9;
import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart'
    as _i12;
import 'package:flutter_exercise/features/blog/domain/repository/blog_repository.dart'
    as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLoginResponse_0 extends _i1.SmartFake implements _i2.LoginResponse {
  _FakeLoginResponse_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i3.AuthService {
  MockAuthService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.LoginResponse> login(_i5.LoginCredentialsDto? credentials) =>
      (super.noSuchMethod(
            Invocation.method(#login, [credentials]),
            returnValue: _i4.Future<_i2.LoginResponse>.value(
              _FakeLoginResponse_0(
                this,
                Invocation.method(#login, [credentials]),
              ),
            ),
          )
          as _i4.Future<_i2.LoginResponse>);

  @override
  _i4.Future<void> logout() =>
      (super.noSuchMethod(
            Invocation.method(#logout, []),
            returnValue: _i4.Future<void>.value(),
            returnValueForMissingStub: _i4.Future<void>.value(),
          )
          as _i4.Future<void>);
}

/// A class which mocks [SecurePreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecurePreferences extends _i1.Mock implements _i6.SecurePreferences {
  MockSecurePreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> saveToken(String? token) =>
      (super.noSuchMethod(
            Invocation.method(#saveToken, [token]),
            returnValue: _i4.Future<void>.value(),
            returnValueForMissingStub: _i4.Future<void>.value(),
          )
          as _i4.Future<void>);

  @override
  _i4.Future<String?> readToken() =>
      (super.noSuchMethod(
            Invocation.method(#readToken, []),
            returnValue: _i4.Future<String?>.value(),
          )
          as _i4.Future<String?>);

  @override
  _i4.Future<void> deleteToken() =>
      (super.noSuchMethod(
            Invocation.method(#deleteToken, []),
            returnValue: _i4.Future<void>.value(),
            returnValueForMissingStub: _i4.Future<void>.value(),
          )
          as _i4.Future<void>);
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i7.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> login(_i8.LoginCredentials? credentials) =>
      (super.noSuchMethod(
            Invocation.method(#login, [credentials]),
            returnValue: _i4.Future<bool>.value(false),
          )
          as _i4.Future<bool>);

  @override
  _i4.Future<void> logout() =>
      (super.noSuchMethod(
            Invocation.method(#logout, []),
            returnValue: _i4.Future<void>.value(),
            returnValueForMissingStub: _i4.Future<void>.value(),
          )
          as _i4.Future<void>);
}

/// A class which mocks [BlogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBlogService extends _i1.Mock implements _i9.BlogService {
  MockBlogService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i10.BlogPostDto>> blogPosts() =>
      (super.noSuchMethod(
            Invocation.method(#blogPosts, []),
            returnValue: _i4.Future<List<_i10.BlogPostDto>>.value(
              <_i10.BlogPostDto>[],
            ),
          )
          as _i4.Future<List<_i10.BlogPostDto>>);
}

/// A class which mocks [BlogRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockBlogRepository extends _i1.Mock implements _i11.BlogRepository {
  MockBlogRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i12.BlogPost>> getBlogPosts() =>
      (super.noSuchMethod(
            Invocation.method(#getBlogPosts, []),
            returnValue: _i4.Future<List<_i12.BlogPost>>.value(
              <_i12.BlogPost>[],
            ),
          )
          as _i4.Future<List<_i12.BlogPost>>);
}

/// A class which mocks [BlogPostsMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockBlogPostsMapper extends _i1.Mock implements _i13.BlogPostsMapper {
  MockBlogPostsMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i12.BlogPost> toDomain(List<_i10.BlogPostDto>? blogposts) =>
      (super.noSuchMethod(
            Invocation.method(#toDomain, [blogposts]),
            returnValue: <_i12.BlogPost>[],
          )
          as List<_i12.BlogPost>);
}
