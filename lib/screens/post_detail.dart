import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maishabeta/models/post_model.dart';
import 'package:video_player/video_player.dart';

import 'chewie_screen.dart';

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
          padding: const EdgeInsets.all(4),
          child: Card(
            elevation: 1,
            child: Column(
              children: <Widget>[
                ChewieScreen(
                videoPlayerController: VideoPlayerController.network(post.video_file),
                  looping: false,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(post.title, style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    letterSpacing: 2,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(child: Text(post.description, style: TextStyle(),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
