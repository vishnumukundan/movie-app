import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/poster_card.dart';

import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';

class ImageRowItem__widget extends StatelessWidget {
  const ImageRowItem__widget({
    Key? key,
    required this.width,
    required this.image,
  }) : super(key: key);

  final double width;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kDefaultBoxShadow,
      ),
      width: ScreenConfig.screenWidth * width,
      child: PosterCard__widget(
        image: image,
        onTap: null,
      ),
    );
  }
}
