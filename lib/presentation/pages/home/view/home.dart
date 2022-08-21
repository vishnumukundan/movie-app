import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      body: Container(
        color: kColorAccent,
        width: ScreenConfig.screenWidth,
        height: ScreenConfig.screenHeight,
        // decoration: BoxDecoration(
        //   image: DecorationImage(image: AssetImage())
        // ),
      ),
    );
  }
}
