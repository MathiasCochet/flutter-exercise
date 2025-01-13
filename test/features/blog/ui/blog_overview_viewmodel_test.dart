import 'package:flutter_exercise/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flutter_exercise/features/blog/data/repository/blog_repository_impl.dart';
import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart';
import 'package:flutter_exercise/features/blog/ui/blog_overview_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

const List<BlogPost> testBlogPosts = [
  BlogPost(
    id: 1,
    title: 'title1',
    description: 'description1',
    imageUrl: 'https://example.com/image1.jpg',
  ),
  BlogPost(
    id: 2,
    title: 'title2',
    description: 'description2',
    imageUrl: 'https://example.com/image2.jpg',
  ),
];

void main() {
  late MockBlogRepository mockBlogRepository;
  late MockAuthRepository mockAuthRepository;
  late ProviderContainer container;

  setUp(() {
    mockBlogRepository = MockBlogRepository();
    mockAuthRepository = MockAuthRepository();
    container = ProviderContainer(
      overrides: [
        blogRepositoryProvider.overrideWithValue(mockBlogRepository),
        authRepositoryProvider.overrideWithValue(mockAuthRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  test('build should return a list of BlogPost on success', () async {
    when(mockBlogRepository.getBlogPosts())
        .thenAnswer((_) async => testBlogPosts);

    final viewModel = container.read(blogOverviewViewModelProvider.future);
    final result = await viewModel;

    expect(result, equals(testBlogPosts));
    verify(mockBlogRepository.getBlogPosts()).called(1);
  });

  test('build should throw an exception when the repository fails', () async {
    when(mockBlogRepository.getBlogPosts())
        .thenThrow(Exception('Failed to fetch posts'));

    final viewModelFuture =
        container.read(blogOverviewViewModelProvider.future);

    await expectLater(viewModelFuture, throwsA(isA<Exception>()));
    verify(mockBlogRepository.getBlogPosts()).called(1);
  });

  test('logout calls AuthRepository.logout', () async {
    when(mockAuthRepository.logout()).thenAnswer((_) async {});

    final viewModel = container.read(blogOverviewViewModelProvider.notifier);

    await viewModel.logout();

    verify(mockAuthRepository.logout()).called(1);
  });
}
