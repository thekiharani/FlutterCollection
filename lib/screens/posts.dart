import 'package:flutter/material.dart';
import 'package:maishabeta/models/post_model.dart';
import 'package:maishabeta/screens/post_detail.dart';
import 'package:maishabeta/http_service.dart';

class PostsPage extends StatefulWidget {

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network('https://maishabeta-space.ams3.digitaloceanspaces.com/maishabeta/logos/web-logo_v2.png'),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView(
                children: posts.map((Post post) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Image.network(post.cover_image),
                    title: Text(post.title),
//                subtitle: Text(post.description),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PostDetail(post: post,))
                    ),
                  ),
                )).toList(),
              ),
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
