import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_app/data/bloc/actor_profile/person_details_bloc.dart';
import 'package:movie_app/data/bloc/discover/discover_bloc.dart';
import 'package:movie_app/data/bloc/home/home_data/home_data_bloc.dart';
import 'package:movie_app/data/bloc/login/login_poster/login_poster_bloc.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_app/data/bloc/movies_result_grid/movies_result_grid_bloc.dart';
import 'package:movie_app/data/bloc/search_result/search_result_bloc.dart';
import 'package:movie_app/data/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_app/domain/usecase/dependancy_injection/injectable.dart';
import 'package:movie_app/presentation/bloc/components/inner_appbars/bloc/appbar_search_bloc.dart';
import 'package:movie_app/presentation/bloc/components/widgets_functionality/widgets_functionality_bloc.dart';
import 'package:movie_app/presentation/bloc/home/slider_image/slider_image_cubit.dart';
import 'package:movie_app/presentation/bloc/main/appbar/appbar_bloc.dart';
import 'package:movie_app/presentation/bloc/navigation_from/navigation_from_bloc.dart';
import 'package:movie_app/presentation/bloc/watchlist/watchlist_scroll/watchlist_scroll_cubit.dart';
import 'package:movie_app/presentation/pages/no_internet/no_internet_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import 'data/bloc/home/image_slider/image_slider_bloc.dart';
import 'presentation/bloc/main/bottom_navbar/botom_nav_cubit.dart';
import 'presentation/components/dialogs/error_widget.dart';
import 'presentation/pages/splash/view/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ErrorWidget__widget(errorDetails: details);
  };

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ConnectivityResult _connectivityResult = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _streamSubscription;

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }

    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() => _connectivityResult = result);
  }

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }

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
        BlocProvider(create: (context) => AppbarSearchBloc()),
        BlocProvider(create: (context) => AppbarBloc()),
        BlocProvider(create: (context) => NavigationFromBloc()),
        BlocProvider(create: (context) => WidgetsFunctionalityBloc()),

        //data blocs
        BlocProvider(create: (context) => getIt<LoginPosterBloc>()),
        BlocProvider(create: (context) => getIt<ImageSliderBloc>()),
        BlocProvider(create: (context) => getIt<MovieDetailsBloc>()),
        BlocProvider(create: (context) => getIt<PersonDetailsBloc>()),
        BlocProvider(create: (context) => getIt<UpcomingMoviesBloc>()),
        BlocProvider(create: (context) => getIt<DiscoverBloc>()),
        BlocProvider(create: (context) => getIt<MoviesResultGridBloc>()),
        BlocProvider(create: (context) => getIt<HomeDataBloc>()),
        BlocProvider(create: (context) => getIt<SearchResultBloc>()),
      ],
      child: GetMaterialApp(
        builder: (context, child) {
          if (_connectivityResult == ConnectivityResult.none) {
            return const NoInternetPage();
          }
          return child!;
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        initialRoute: '/splash',
        getPages: [
          GetPage(name: '/splash', page: () => const SplashPage()),
        ],
      ),
    );
  }
}
