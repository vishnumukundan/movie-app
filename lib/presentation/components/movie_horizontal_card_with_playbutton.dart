// ignore_for_file: unnecessary_import, camel_case_types

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/movie_details/view/movie_details_page.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../themes/colors.dart';

class MovieHorizontalCardWithPlaybutton__widget extends StatelessWidget {
  const MovieHorizontalCardWithPlaybutton__widget({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    // required this.onCardTap,
    // required this.onPlayTap,
  }) : super(key: key);

  final int id;
  final String title;
  final String image;
  // final VoidCallback onPlayTap;
  // final VoidCallback onCardTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => PageNav.push(context, MovieDetailsPage(id: id)),
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kColorWhite20,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: kColorWhite50,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            ApiDataFetching.image(image)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: kDefaultPadding / 2),
                  Expanded(
                    child: Regular__text(
                      text: title,
                      fontSize: 14.0,
                      maxLines: 2,
                      textOverFlow: TextOverflow.ellipsis,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Primary_Large__IconButton(
              icon: Assets.icons.play,
              padding: 8.0,
              borderRadius: 60.0,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
