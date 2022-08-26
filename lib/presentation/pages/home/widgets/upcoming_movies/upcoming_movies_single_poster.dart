import 'package:flutter/material.dart';

import '../../../../components/blurred_background.dart';
import '../../../../components/image_container.dart';
import '../../../../components/text.dart';
import '../../../../themes/colors.dart';
import '../../../../themes/values.dart';

class UpcomingMoviesSinglePoster__widget extends StatelessWidget {
  const UpcomingMoviesSinglePoster__widget({
    Key? key,
    required this.dataList,
    required this.index,
  }) : super(key: key);

  final dynamic dataList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ImageContainer__widget(
            imageData: dataList,
            index: index,
            height: 270,
            width: 175,
            radius: 8.0,
            boxshadow: kDefaultBoxShadow,
          ),
          BlurredBackground__widget(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            // blur: 5.0,
            color: kColorPrimary.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SemiBold__text(
                    text: "${dataList[index]["title"]}",
                    fontSize: 12.0,
                    maxLines: 1,
                    textOverFlow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: kDefaultPadding / 4),
                  Regular__text(
                    text: "${dataList[index]["release_date"]}",
                    fontSize: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
