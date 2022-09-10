import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/bloc/watchlist/watchlist_scroll/watchlist_scroll_cubit.dart';
import 'package:movie_app/presentation/pages/main/view/main_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import 'presentation/bloc/home/image_slider/image_slider_cubit.dart';
import 'presentation/bloc/main/bottom_navbar/botom_nav_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: kColorPrimary,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavCubit()),
        BlocProvider(
          create: (context) => ImageSliderCubit(),
        ),
        BlocProvider(create: (context) => WatchlistScrollCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        // home: const SplashPage(),
        home: MainPage(),
      ),
    );
  }
}
