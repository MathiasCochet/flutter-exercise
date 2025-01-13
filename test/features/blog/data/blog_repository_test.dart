import 'package:flutter_exercise/features/blog/data/dto/blog_post_dto.dart';
import 'package:flutter_exercise/features/blog/data/repository/blog_repository_impl.dart';
import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart';
import 'package:flutter_exercise/features/blog/domain/repository/blog_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

const List<BlogPost> testBlogPosts = [
  BlogPost(
    id: 1,
    title: 'title1',
    description: 'description1',
    imageUrl: "https://example.com/image1.jpg",
  ),
  BlogPost(
    id: 2,
    title: 'title2',
    description: 'description2',
    imageUrl: "https://example.com/image2.jpg",
  ),
];

void main() {
  late MockBlogService mockBlogService;
  late BlogRepository blogRepository;
  late MockBlogPostsMapper mockMapper;

  setUp(() {
    mockBlogService = MockBlogService();
    mockMapper = MockBlogPostsMapper();
    blogRepository = BlogRepositoryImpl(mockBlogService, mockMapper);
  });

  test(
      'getBlogPosts should return a list of BlogPost when service call is successful',
      () async {
    const testBlogPostsDto = [
      BlogPostDto(
        id: 1,
        title: 'title1',
        description: 'description1',
        image_url: "https://example.com/image1.jpg",
      ),
      BlogPostDto(
        id: 2,
        title: 'title2',
        description: 'description2',
        image_url: "https://example.com/image2.jpg",
      ),
    ];

    when(mockBlogService.blogPosts()).thenAnswer((_) async => testBlogPostsDto);

    when(mockMapper.toDomain(testBlogPostsDto)).thenReturn(testBlogPosts);

    final result = await blogRepository.getBlogPosts();

    expect(result, equals(testBlogPosts));
    verify(mockBlogService.blogPosts()).called(1);
  });

  test('getBlogPosts should throw an exception when service call fails',
      () async {
    when(mockBlogService.blogPosts()).thenThrow(Exception('Service Error'));

    expect(blogRepository.getBlogPosts(), throwsA(isA<Exception>()));
    verify(mockBlogService.blogPosts()).called(1);
  });
}
