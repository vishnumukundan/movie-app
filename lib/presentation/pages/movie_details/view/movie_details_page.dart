// ignore_for_file: camel_case_types, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/double_to_fractional_digit.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/button_group_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/cast_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/description_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_title_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/review_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/skelton/poster_image_skelton.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/video_section.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../components/text.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<MovieDetailsBloc>()
          .add(MovieDetailsEvent.getMovieDetails(movieId: id.toString()));
    });
    return Scaffold(
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: CustomScroll(),
            child: SingleChildScrollView(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 0,
                    child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const PosterImageSkelton__widget();
                        }
                        if (state.hasError) {
                          return Container(
                            height: getScreenHeightPercentage(80.0),
                            width: ScreenConfig.screenWidth,
                            decoration: const BoxDecoration(
                              color: kColorPrimary,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.info_outline_rounded,
                                  color: kColorWhite50,
                                  size: 128,
                                ),
                                SizedBox(height: kDefaultPadding / 2),
                                Medium__text(
                                  text: 'The image not found !',
                                  color: kColorWhite,
                                  fontSize: 16.0,
                                ),
                              ],
                            ),
                          );
                        } else {
                          return ImageContainer__widget(
                            imageWidth: ImageWidth.w780,
                            imageData: state.movieDetailsData.posterPath!,
                            height: getScreenHeightPercentage(80.0),
                            width: ScreenConfig.screenWidth,
                          );
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getScreenHeightPercentage(76.0),
                    ),
                    child: Background(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding * 2),
                        topRight: Radius.circular(kDefaultPadding * 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding * 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            // movie title section
                            BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                                builder: (context, state) {
                              if (state.isLoading) {
                                return const MovieTitleSection__widget(
                                  title: 'Tiltle Loading',
                                  tagline: 'Loading.....',
                                );
                              }
                              if (state.hasError) {
                                return const MovieTitleSection__widget(
                                  title: 'No Title',
                                  tagline: 'Error while loading data',
                                );
                              } else {
                                return MovieTitleSection__widget(
                                  title: state.movieDetailsData.title!,
                                  tagline: state.movieDetailsData.tagline!,
                                );
                              }
                            }),
                            const SizedBox(height: kDefaultPadding),
                            // button group section
                            BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                              builder: (context, state) =>
                                  ButtonGroupSection__widget(
                                ratingValue: state.isLoading
                                    ? 0.0
                                    : doubleToFactionalDigit(
                                        state.movieDetailsData.voteAverage!, 1),
                              ),
                            ),
                            const SizedBox(height: kDefaultPadding * 2),
                            // desctiption section
                            const DescriptionSection__widget(),
                            const SizedBox(height: kDefaultPadding * 2),
                            // overview section
                            const Medium__text(
                              text: 'Overview',
                              fontSize: 16.0,
                            ),
                            const SizedBox(height: kDefaultPadding / 2),
                            BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                              builder: (context, state) {
                                if (state.isLoading) {
                                  return const Medium__text(
                                    text: 'Loading overview...',
                                    fontSize: 12.0,
                                    height: 1.5,
                                    color: kColorWhite80,
                                  );
                                }
                                if (state.hasError) {
                                  return const Medium__text(
                                    text: 'No overview yet.',
                                    fontSize: 12.0,
                                    height: 1.5,
                                    color: kColorWhite80,
                                  );
                                }
                                return Medium__text(
                                  text: state.movieDetailsData.overview!,
                                  fontSize: 12.0,
                                  height: 1.5,
                                  color: kColorWhite80,
                                );
                              },
                            ),
                            const SizedBox(height: kDefaultPadding * 2),
                            // cast section
                            const CastSection__widget(),

                            const SizedBox(height: kDefaultPadding * 3),
                            // video section
                            const VideoSection__widget(),
                            const SizedBox(height: kDefaultPadding * 3),
                            const ReviewSection__widget(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: kDefaultPadding * 3,
            left: kDefaultPadding * 2,
            child: Primary_Medium__IconButton(
              icon: Assets.icons.arrowLeft,
              borderRadius: 60.0,
              bgColor: kColorPrimary.withOpacity(0.8),
              onTap: () => PageNav.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
