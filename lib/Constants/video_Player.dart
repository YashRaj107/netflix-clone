import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'constant.dart';
import 'package:netflix/lists/list_views.dart';

class CustomYoutubePlayer extends StatefulWidget {
  const CustomYoutubePlayer({Key? key}) : super(key: key);

  @override
  State<CustomYoutubePlayer> createState() => _CustomYoutubePlayerState();
}

class _CustomYoutubePlayerState extends State<CustomYoutubePlayer> {
  late YoutubePlayerController _controller;
  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
        initialVideoId: moneyHeist,
        flags: const YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: true,
        ));
  }
    @override
    void initState() {
      runYoutubePlayer();
      super.initState();
    }

    @override
    void deactivate() {
      _controller.pause();
      super.deactivate();
    }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: _controller),
        builder: (context, player) {
          return Scaffold(
            body: Center(
              child: Container( height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: player,
              ),
            ),
          );
        }
    );
  }
}
