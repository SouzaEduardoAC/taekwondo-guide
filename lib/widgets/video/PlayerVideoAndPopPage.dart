import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handoryu/widgets/video/PlayPauseOverlay.dart';
import 'package:video_player/video_player.dart';

class PlayerVideoAndPopPage extends StatefulWidget {
  String _videoPath;
  PlayerVideoAndPopPage(this._videoPath);
  @override
  _PlayerVideoAndPopPageState createState() => _PlayerVideoAndPopPageState(_videoPath);
}

class _PlayerVideoAndPopPageState extends State<PlayerVideoAndPopPage> {
  VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;
  String _videoPath;
  _PlayerVideoAndPopPageState(this._videoPath);

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset(_videoPath);
    _videoPlayerController.addListener(() {
      if (startedPlaying && !_videoPlayerController.value.isPlaying) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Center(
        child: FutureBuilder<bool>(
          future: started(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data == true) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    VideoPlayer(_videoPlayerController),
                    PlayPauseOverlay(controller: _videoPlayerController),
                    VideoProgressIndicator(_videoPlayerController, allowScrubbing: true),
                  ],
                )
              );
            } else {
              return const Text('waiting for video to load');
            }
          },
        ),
      ),
    );
  }
}
