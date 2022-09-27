// ignore_for_file: camel_case_types

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/video_playback/view/video_playback_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../themes/values.dart';

class VideoCardItem__widget extends StatelessWidget {
  const VideoCardItem__widget({
    Key? key,
    required this.youtubeKey,
    required this.title,
    required this.tagline,
  }) : super(key: key);

  final String youtubeKey;
  final String title;
  final String tagline;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 140,
                width: 250,
                decoration: BoxDecoration(
                  color: kColorPrimary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      ApiDataFetching.youtubeTumbnail(youtubeKey),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Primary_Large__IconButton(
                icon: Assets.icons.play,
                borderRadius: 60.0,
                bgColor: kColorPrimary.withOpacity(0.6),
                onTap: () => PageNav.push(
                  context,
                  VideoPlaybackPage(youtubeKey: youtubeKey),
                ),
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Medium__text(
            text: title,
            fontSize: 14.0,
            maxLines: 1,
            textOverFlow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Regular__text(
            text: tagline,
            fontSize: 12.0,
            color: kColorWhite50,
            maxLines: 1,
            textOverFlow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
