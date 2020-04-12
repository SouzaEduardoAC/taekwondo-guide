import 'package:flutter/material.dart';
import 'package:taekwondoguide/widgets/PlayPauseOverlay.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  String assetVideoPath;
  String videoName;
  VideoPlayerWidget(this.assetVideoPath, this.videoName);


  @override
  _VideoPlayerState createState() => _VideoPlayerState(assetVideoPath, this.videoName);
}

class _VideoPlayerState extends State<VideoPlayerWidget> {
  VideoPlayerController _controller;
  String assetVideoPath;
  String videoName;
  _VideoPlayerState(this.assetVideoPath, this.videoName);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(assetVideoPath);

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20.0),
          ),
          Text(videoName),
          Container(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  PlayPauseOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}