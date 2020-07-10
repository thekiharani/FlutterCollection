import 'package:flutter/material.dart';
import 'package:maishabeta/models/post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  const PostDetail({@required this.post,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Name'),
                  subtitle: Text(post.title),
                ),
                ListTile(
                  title: Text('ID'),
                  subtitle: Text("${post.id}"),
                ),
                ListTile(
                  title: Text('URL'),
                  subtitle: Text(post.video_file),
                ),
                ListTile(
                  title: Text('Languages'),
                  subtitle: Text("${post.category}"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
