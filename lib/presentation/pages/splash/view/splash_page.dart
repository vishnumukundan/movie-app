import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/pages/login/view/login_page.dart';

import '../../../../gen/assets.gen.dart';
import '../../../themes/screen_size_config.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    // context
    //     .read<InternetConnenctivityBloc>()
    //     .add(InternetConnenctivityEvent.checkConnectivity(
    //       connectivityResult: ,
    //     ));
    Future.delayed(const Duration(seconds: 3), () {
      PageNav.pushAndReplace(context, const LoginPage());
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
