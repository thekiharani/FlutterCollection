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
        title: Text('Posts'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts.map((Post dev) => ListTile(
                title: Text(dev.title),
                subtitle: Text(dev.video_file),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PostDetail(post: dev,))
                ),
              )).toList(),
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
