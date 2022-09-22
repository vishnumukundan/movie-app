// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/pages/video_playback/widgets/youtube_player_iframe.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class VideoPlaybackPage extends StatelessWidget {
  VideoPlaybackPage({
    Key? key,
    required this.youtubeKey,
  }) : super(key: key);

  final String youtubeKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getScreenHeightPercentage(2.0),
            horizontal: getScreenWidthPercentage(5.0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                RotatedBox(
                  quarterTurns: 45,
                  child: YoutubePlayerIframe__widget(
                    youtubeKey: youtubeKey,
                  ),
                ),
                const SizedBox(width: kDefaultPadding),
                GestureDetector(
                  onTap: () => PageNav.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Assets.icons.close.svg(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
