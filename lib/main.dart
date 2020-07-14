import 'package:flutter/material.dart';
import 'package:maishabeta/screens/chewie_screen.dart';
import 'package:maishabeta/screens/posts.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geeks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: PostsPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play Videos'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Column(
              children: <Widget>[
                ChewieScreen(
                videoPlayerController: VideoPlayerController.network('https://ams3.digitaloceanspaces.com/maishabeta-space/maishabeta/videos/2020/07/10/really_funny_short_clips.mp4?AWSAccessKeyId=ZUEQ23YT5RQGZ32ZEZ53&Signature=Cpwsnkhn3Bw2HDjlfi6hOikrgng%3D&Expires=1594418386'),
                  looping: false,
                ),
                Text('Good Morning...')
              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: <Widget>[
                ChewieScreen(
              videoPlayerController: VideoPlayerController.network('https://ams3.digitaloceanspaces.com/maishabeta-space/maishabeta/videos/2020/07/10/Funny_Short_clips.mp4?AWSAccessKeyId=ZUEQ23YT5RQGZ32ZEZ53&Signature=AKvp8evdx%2FU4bRiEwYVF6RARfYM%3D&Expires=1594418386'),
                  looping: false,
                ),
                Text('Good Afternoon...')
              ],
            ),
          ),
        ],
      ),
    );
  }
}



