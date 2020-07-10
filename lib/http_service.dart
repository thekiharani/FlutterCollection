import 'dart:convert';

import 'package:http/http.dart';
import 'package:maishabeta/models/dev_model.dart';
import 'package:maishabeta/models/post_model.dart';
import 'package:maishabeta/models/post_model.dart';

class HttpService {
  final String devUrl = 'http://161.35.148.76/api/programmers/';
  final String baseUrl = 'https://maishabeta.com/api/';

  Future<List<Developer>> getDevs() async {
    Response res = await get(devUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Developer> developers = body.map((dynamic item) => Developer.fromJson(item)).toList();

      return developers;
    } else {
      throw 'Unable to get the remote data...';
    }
  }

  Future<List<Post>> getPosts() async {
    Response res = await get(baseUrl + 'posts/');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts = body.map((dynamic item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw 'Unable to get the remote data...';
    }
  }
}