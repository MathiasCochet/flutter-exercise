import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart';

abstract class BlogRepository {
  Future<List<BlogPost>> getBlogPosts();
}
