import 'package:dio/dio.dart';
import 'package:flutter_exercise/core/api/config.dart';
import 'package:flutter_exercise/core/api/dio_provider.dart';
import 'package:flutter_exercise/features/blog/data/dto/blog_post_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'blog_service.g.dart';

final blogServiceProvider = Provider<BlogService>((ref) {
  final dio = ref.watch(dioProvider);
  return BlogService(dio);
});

@RestApi(baseUrl: baseURL)
abstract class BlogService {
  factory BlogService(Dio dio, {String baseUrl}) = _BlogService;

  @GET("/blog/posts")
  @Header("Authorization")
  Future<List<BlogPostDto>> blogPosts();
}
