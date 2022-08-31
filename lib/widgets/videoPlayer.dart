import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CoverVideoPlayer extends StatefulWidget {
  final String? url;

  const CoverVideoPlayer({this.url});

  @override
  _CoverVideoPlayerState createState() => _CoverVideoPlayerState();
}

class _CoverVideoPlayerState extends State<CoverVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('${widget.url}.mp4')
      ..initialize().then((_) {
        setState(() {
          _controller.play();
          _controller.setLooping(true);
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: double.infinity,
      child: _controller.value.isInitialized
          ? GestureDetector(
              onTap: () {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              },
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller,
                ),
              ),
            )
          : loadingVideo(),
    );
  }

  Widget loadingVideo() => Container(
        color: Colors.black,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
}
