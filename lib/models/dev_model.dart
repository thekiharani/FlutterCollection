import 'package:flutter/foundation.dart';

class Developer {
  final int id;
  final String url;
  final String name;
  final List languages;

  Developer({
    @required this.id,
    @required this.url,
    @required this.name,
    @required this.languages
  });

  factory Developer.fromJson(Map<String, dynamic> json) {
    return Developer(
        id: json['id'] as int,
        url: json['url'] as String,
        name: json['name'] as String,
        languages: json['languages'] as List
    );
  }
}