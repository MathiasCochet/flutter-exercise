import 'package:flutter_exercise/features/blog/data/dto/blog_post_dto.dart';
import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart';

class BlogPostsMapper {
  List<BlogPost> toDomain(List<BlogPostDto> blogposts) {
    return blogposts
        .map<BlogPost>((BlogPostDto dto) => BlogPost(
              id: dto.id,
              title: dto.title,
              description: dto.description,
              imageUrl: dto.image_url,
            ))
        .toList();
  }
}
