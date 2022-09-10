// ignore_for_file: camel_case_types

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../../data/sources/remote_data_sources/api_end_points.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

class ContinueWatchingCard__widget extends StatelessWidget {
  const ContinueWatchingCard__widget({
    Key? key,
    required this.title,
    required this.image,
    required this.progress,
  }) : super(key: key);

  final String title;
  final String image;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: getScreenHeightPercentage(22.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kColorWhite20,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: getScreenHeightPercentage(14.0),
                width: getScreenHeightPercentage(14.0),
                decoration: BoxDecoration(
                  color: kColorWhite50,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image:
                        CachedNetworkImageProvider(ApiEndPoints.image(image)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              SizedBox(
                width: getScreenHeightPercentage(14.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: progress,
                    color: kColorGreen,
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              Regular__text(
                text: title,
                fontSize: 14.0,
                maxLines: 1,
                textOverFlow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: getScreenHeightPercentage(14.0) / 4.5,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: kDefaultBoxShadow,
                shape: BoxShape.circle,
              ),
              child: Accent_Large__IconButton(
                icon: Assets.icons.play,
                borderRadius: 60.0,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
