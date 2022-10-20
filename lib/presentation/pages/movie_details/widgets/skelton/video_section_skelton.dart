// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

class VideoSectionSkelton__widget extends StatelessWidget {
  const VideoSectionSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
        child: CustomListViewBuilder(
      clipBehavior: Clip.hardEdge,
      itemCount: 3,
      contentSpacing: kDefaultPadding,
      scrollDirection: Axis.horizontal,
      reverseList: true,
      builder: (context, index) => const ListItem(),
    ));
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

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
                ),
              ),
              Primary_Large__IconButton(
                icon: Assets.icons.play,
                iconColor: kColorWhite,
                borderRadius: 60.0,
                bgColor: kColorWhite80,
                onTap: () {},
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
            height: 16,
            width: 150,
            decoration: BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Container(
            height: 12,
            width: 100,
            decoration: BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
