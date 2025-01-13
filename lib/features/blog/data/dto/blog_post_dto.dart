import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_post_dto.g.dart';
part 'blog_post_dto.freezed.dart';

@Freezed(toJson: false, fromJson: true)
class BlogPostDto with _$BlogPostDto {
  const factory BlogPostDto({
    required int id,
    required String title,
    required String description,
    required String image_url,
  }) = _BlogPostDto;

  factory BlogPostDto.fromJson(Map<String, Object?> json) =>
      _$BlogPostDtoFromJson(json);
}
