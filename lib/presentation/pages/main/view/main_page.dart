import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/presentation/components/dialogs/exit_app_dialoge.dart';
import 'package:movie_app/presentation/pages/discover/view/discover_page.dart';
import 'package:movie_app/presentation/pages/home/view/home_page.dart';
import 'package:movie_app/presentation/pages/main/widgets/bottom_navbar/bottom_navbar.dart';
import 'package:movie_app/presentation/pages/profile/view/profile_page.dart';
import 'package:movie_app/presentation/pages/watchlist/view/watchlist_page.dart';

import '../../../../gen/assets.gen.dart';
import '../../../bloc/main/bottom_navbar/botom_nav_cubit.dart';
import '../../../themes/colors.dart';
import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final List _pages = [
    const HomePage(),
    const DiscoverPage(),
    const WatchlistPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return WillPopScope(
      onWillPop: () async => showExitAppDialoge(context),
      child: Scaffold(
        backgroundColor: kColorPrimary,
        body: ScrollConfiguration(
          behavior: CustomScroll(),
          child: Stack(
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
              BlocBuilder<BottomNavCubit, BottomNavState>(
                builder: (context, state) {
                  return _pages[state.selectedIndex];
                },
              ),
              const BottomNavbar__widget(),
            ],
          ),
        ),
      ),
    );
  }
}
