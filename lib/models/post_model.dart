import 'package:flutter/foundation.dart';

class Post {
  final int id;
  final int author;
  final int language;
  final int category;
  final String title;
  final String slug;
  final String video_file;
  final String cover_image;
  final String description;
  final String created_at;
  final String updated_at;

  Post({
    @required this.id,
    @required this.author,
    @required this.language,
    @required this.category,
    @required this.title,
    @required this.slug,
    @required this.cover_image,
    @required this.video_file,
    @required this.description,
    @required this.created_at,
    @required this.updated_at
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'] as int,
        author: json['author'] as int,
        language: json['language'] as int,
        category: json['category'] as int,
        title: json['title'] as String,
        slug: json['slug'] as String,
        video_file: json['video_file'] as String,
        cover_image: json['cover_image'] as String,
        description: json['description'] as String,
        created_at: json['created_at'] as String,
        updated_at: json['updated_at'] as String
    );
  }
}