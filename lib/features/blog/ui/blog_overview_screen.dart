import 'package:flutter/material.dart';
import 'package:flutter_exercise/core/navigation/router.dart';
import 'package:flutter_exercise/features/blog/domain/model/blog_post.dart';
import 'package:flutter_exercise/features/blog/ui/blog_overview_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlogOverviewScreen extends ConsumerWidget {
  const BlogOverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blogPostsAsyncValue = ref.watch(blogOverviewViewModelProvider);
    final viewModel = ref.read(blogOverviewViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog Posts'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              viewModel.logout();
              final goRouter = ref.read(goRouterProvider);
              goRouter.go(loginScreenPath);
            },
          ),
        ],
      ),
      body: blogPostsAsyncValue.when(
        data: (blogPosts) => _buildBlogPostsList(blogPosts),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

Widget _buildBlogPostsList(List<BlogPost> blogPosts) {
  return ListView.builder(
    itemCount: blogPosts.length,
    itemBuilder: (context, index) {
      final blogPost = blogPosts[index];
      return Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  blogPost.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blogPost.title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      blogPost.description,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
