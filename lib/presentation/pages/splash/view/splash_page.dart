import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/pages/login/view/login_page.dart';

import '../../../../gen/assets.gen.dart';
import '../../../themes/screen_size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      PageNav.pushAndReplace(context, LoginPage());
    });
    ScreenConfig().init(context);
    return Scaffold(
      body: Background(
        child: Center(
          child: Assets.images.logo1.svg(),
        ),
      ),
    );
  }
}
