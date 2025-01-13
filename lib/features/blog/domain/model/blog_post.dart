class BlogPost {
  const BlogPost({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final int id;
  final String title;
  final String description;
  final String imageUrl;
}
