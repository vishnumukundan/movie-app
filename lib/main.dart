import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/bloc/actor_profile/person_details_bloc.dart';
import 'package:movie_app/data/bloc/login/login_poster/login_poster_bloc.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_app/domain/usecase/dependancy_injection/injectable.dart';
import 'package:movie_app/presentation/bloc/components/inner_appbars/appbar_search/appbar_search_cubit.dart';
import 'package:movie_app/presentation/bloc/home/slider_image/slider_image_cubit.dart';
import 'package:movie_app/presentation/bloc/main/appbar/appbar_bloc.dart';
import 'package:movie_app/presentation/bloc/watchlist/watchlist_scroll/watchlist_scroll_cubit.dart';
import 'package:movie_app/presentation/components/error_widget.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import 'data/bloc/home/image_slider/image_slider_bloc.dart';
import 'presentation/bloc/main/bottom_navbar/botom_nav_cubit.dart';
import 'presentation/pages/splash/view/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();

  //
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ErrorWidget__widget(errorDetails: details);
  };

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
        //presentation blocs
        BlocProvider(create: (context) => BottomNavCubit()),
        BlocProvider(create: (context) => SliderImageCubit()),
        BlocProvider(create: (context) => WatchlistScrollCubit()),
        BlocProvider(create: (context) => AppbarSearchCubit()),
        BlocProvider(create: (context) => AppbarBloc()),
        //data blocs
        BlocProvider(create: (context) => getIt<LoginPosterBloc>()),
        BlocProvider(create: (context) => getIt<ImageSliderBloc>()),
        BlocProvider(create: (context) => getIt<MovieDetailsBloc>()),
        BlocProvider(create: (context) => getIt<PersonDetailsBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        home: const SplashPage(),
      ),
    );
  }
}
