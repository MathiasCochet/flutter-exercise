import 'package:flutter_exercise/core/preferences/secure_preferences.dart';
import 'package:flutter_exercise/features/auth/data/service/auth_service.dart';
import 'package:flutter_exercise/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_exercise/features/blog/data/mapper/blog_posts_mapper.dart';
import 'package:flutter_exercise/features/blog/data/service/blog_service.dart';
import 'package:flutter_exercise/features/blog/domain/repository/blog_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  AuthService,
  SecurePreferences,
  AuthRepository,
  BlogService,
  BlogRepository,
  BlogPostsMapper,
])
void main() {}
