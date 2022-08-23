import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/blurred_background.dart';
import 'package:movie_app/presentation/pages/discover/view/discover_page.dart';
import 'package:movie_app/presentation/pages/home/view/home_page.dart';
import 'package:movie_app/presentation/pages/main/widgets/appbar.dart';
import 'package:movie_app/presentation/pages/profile/view/profile_page.dart';
import 'package:movie_app/presentation/pages/watchlist/view/watchlist_page.dart';

import '../../../../gen/assets.gen.dart';
import '../../../themes/colors.dart';
import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final List _pages = [
    HomePage(),
    DiscoverPage(),
    WatchlistPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: Stack(
        children: [
          Container(
            width: ScreenConfig.screenWidth,
            height: ScreenConfig.screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.bgImage.path),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  kColorPrimary.withOpacity(0.5),
                  BlendMode.multiply,
                ),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: kDefaultBlur,
                sigmaY: kDefaultBlur,
              ),
              child: Container(),
            ),
          ),
          _pages[0],
          const Appbar__widget(),
        ],
      ),
    );
  }
}
