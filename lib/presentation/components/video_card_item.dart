import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../themes/values.dart';

class VideoCardItem__widget extends StatelessWidget {
  const VideoCardItem__widget({
    Key? key,
    required this.dataList,
    required this.index,
  }) : super(key: key);

  final dynamic dataList;
  final int index;

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
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                  color: kColorPrimary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500${dataList[index]["backdrop_path"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Primary_Large__IconButton(
                icon: Assets.icons.play,
                borderRadius: 60.0,
                bgColor: kColorPrimary.withOpacity(0.6),
                onTap: () {},
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Medium__text(
            text: '${dataList[index]["title"]}',
            fontSize: 14.0,
            maxLines: 1,
            textOverFlow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: kDefaultPadding / 2),
          const Regular__text(
            text: 'Tagline',
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
