import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
 
class VideoS extends StatefulWidget {
  VideoS() : super();
 
  final String title = "Video Demo";
 
  @override
  VideoSState createState() => VideoSState();
}
 
class VideoSState extends State<VideoS> {
  //
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
 
  @override
  void initState() {
    // _controller = VideoPlayerController.network(
    //     "https://github.com/Fernando373/pii/blob/master/a.mp4");
    _controller = VideoPlayerController.asset("assets/video/s.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video letra S"),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}