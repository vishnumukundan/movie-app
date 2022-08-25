// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/bloc/home/image_slider/image_slider_cubit.dart';

import '../../../components/text.dart';
import '../../../components/background.dart';
import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';
import '../../main/widgets/appbar.dart';
import '../widgets/image_slider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ImageSliderCubit(),
        )
      ],
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ImageSlider__widget(),
              ],
            ),
          ),
          const Appbar__widget(),
        ],
      ),
    );
  }
}
