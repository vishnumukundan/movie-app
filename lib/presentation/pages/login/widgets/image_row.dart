import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import 'image_row_item.dart';

class ImageRow__widget extends StatelessWidget {
  const ImageRow__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ImageRowItem__widget(
          image: AssetImage(Assets.images.bgImage.path),
          width: 0.20,
        ),
        ImageRowItem__widget(
          image: AssetImage(Assets.images.bgImage.path),
          width: 0.30,
        ),
        ImageRowItem__widget(
          image: AssetImage(Assets.images.bgImage.path),
          width: 0.20,
        ),
      ],
    );
  }
}
