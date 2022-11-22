import 'package:flutter/material.dart';
import 'package:movie_app/core/services/login_service.dart';
import 'package:movie_app/presentation/components/background.dart';

import '../../../../gen/assets.gen.dart';
import '../../../themes/screen_size_config.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    chechkUserLoggedIn(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
