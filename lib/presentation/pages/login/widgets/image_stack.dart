// ignore_for_file: camel_case_types

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/bloc/login/login_poster/login_poster_bloc.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../components/image_container.dart';
import '../../../themes/values.dart';

class ImageStack__widget extends StatelessWidget {
  ImageStack__widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPosterBloc, LoginPosterState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                left: 0,
                child: Transform.scale(
                  scale: 0.8,
                  child: state.loginPoster.isEmpty || state.isLoading
                      ? const CircularProgressIndicator()
                      : ImageContainer__widget(
                          imageData: state.loginPoster[1].posterPath,
                          height: getScreenHeightPercentage(30.0),
                          width: getScreenHeightPercentage(20.0),
                          radius: 8.0,
                          boxshadow: kDefaultBoxShadow,
                        ),
                ),
              ),
              Positioned(
                right: 0,
                child: Transform.scale(
                  scale: 0.8,
                  child: state.loginPoster.isEmpty || state.isLoading
                      ? const CircularProgressIndicator()
                      : ImageContainer__widget(
                          imageData: state.loginPoster[2].posterPath,
                          height: getScreenHeightPercentage(30.0),
                          width: getScreenHeightPercentage(20.0),
                          radius: 8.0,
                          boxshadow: kDefaultBoxShadow,
                        ),
                ),
              ),
              state.loginPoster.isEmpty || state.isLoading
                  ? const CircularProgressIndicator()
                  : ImageContainer__widget(
                      imageData: state.loginPoster[0].posterPath,
                      height: getScreenHeightPercentage(30.0),
                      width: getScreenHeightPercentage(20.0),
                      radius: 8.0,
                      boxshadow: kDefaultBoxShadow,
                    ),
            ],
          ),
        );
      },
    );
  }
}
