import 'package:flutter_exercise/features/blog/data/repository/blog_repository_impl.dart';
import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'blog_overview_viewmodel.g.dart';

@riverpod
class BlogOverviewViewModel extends _$BlogOverviewViewModel {
  @override
  Future<List<BlogPost>> build() async {
    final blogRepository = ref.read(blogRepositoryProvider);
    return blogRepository.getBlogPosts();
  }
}
