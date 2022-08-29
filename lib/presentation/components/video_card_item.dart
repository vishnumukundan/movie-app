import 'package:flutter/material.dart';
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
          Container(
            height: 150,
            width: 250,
            color: kColorWhite50,
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
