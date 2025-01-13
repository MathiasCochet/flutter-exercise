import 'package:flutter_exercise/features/blog/data/mapper/blog_posts_mapper.dart';
import 'package:flutter_exercise/features/blog/data/service/blog_service.dart';
import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart';
import 'package:flutter_exercise/features/blog/domain/repository/blog_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final blogRepositoryProvider =
    Provider<BlogRepository>((ref) => BlogRepositoryImpl(
          ref.watch(blogServiceProvider),
          BlogPostsMapper(),
        ));

class BlogRepositoryImpl implements BlogRepository {
  const BlogRepositoryImpl(this.blogService, this.mapper);

  final BlogService blogService;
  final BlogPostsMapper mapper;

  @override
  Future<List<BlogPost>> getBlogPosts() async {
    List<BlogPost> blogposts;
    final dtoResult = await blogService.blogPosts();
    blogposts = mapper.toDomain(dtoResult);
    return blogposts;
  }
}
