// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerIframe__widget extends StatefulWidget {
  const YoutubePlayerIframe__widget({
    Key? key,
    required this.youtubeKey,
  }) : super(key: key);

  final String youtubeKey;

  @override
  _YoutubePlayerIframe__widgetState createState() =>
      _YoutubePlayerIframe__widgetState();
}

class _YoutubePlayerIframe__widgetState
    extends State<YoutubePlayerIframe__widget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        color: 'transparent',
        enableCaption: false,
        strictRelatedVideos: true,
      ),
    )..onInit = () {
        _controller.loadVideoById(videoId: widget.youtubeKey);
        // _controller.loadVideoByUrl(
        //     mediaContentUrl: 'https://www.youtube.com/watch?v=3kAsxVzRJmI');
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeightPercentage(50.0),
      width: getScreenHeightPercentage(80.0),
      child: YoutubePlayerControllerProvider(
        controller: _controller,
        child: YoutubePlayer(
          controller: _controller,
        ),
      ),
    );
  }
}
