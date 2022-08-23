// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:movie_app/gen/assets.gen.dart';
import '../../../components/text.dart';
import '../../../components/background.dart';
import '../../../themes/screen_size_config.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.images.bgImage.path),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
