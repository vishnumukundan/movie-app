// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables, camel_case_types

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/home/widgets/skelton/image_slider_skelton.dart';
import 'package:movie_app/presentation/pages/movie_details/view/movie_details_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../../data/bloc/home/image_slider/image_slider_bloc.dart';
import '../../../bloc/home/slider_image/slider_image_cubit.dart';
import '../../../themes/values.dart';

class ImageSlider__widget extends StatelessWidget {
  ImageSlider__widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = context.watch<SliderImageCubit>().state.currentIndex;

    return BlocBuilder<ImageSliderBloc, ImageSliderState>(
      builder: (context, state) {
        return SizedBox(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CarouselSlider.builder(
                itemCount: sliderDummyData.length,
                options: CarouselOptions(
                  aspectRatio: 3 / 4,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6),
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    context.read<SliderImageCubit>().setIndex(index);
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  final _dataList = state.imageSliderDataList;

                  return GestureDetector(
                    onTap: () {
                      PageNav.push(
                        context,
                        MovieDetailsPage(
                          id: state.isLoading ? 0 : _dataList[index].id,
                        ),
                      );
                    },
                    child: Container(
                      width: ScreenConfig.screenWidth,
                      decoration: const BoxDecoration(color: kColorWhite50),
                      child: state.isLoading
                          ? const ImageSliderSkelton__widget()
                          : CachedNetworkImage(
                              imageUrl: ApiDataFetching.image(
                                _dataList[index].posterPath,
                                ImageWidth.w500,
                              ),
                              fit: BoxFit.cover,
                              fadeInDuration: const Duration(milliseconds: 100),
                              fadeOutDuration: const Duration(milliseconds: 10),
                              placeholder: (context, url) =>
                                  const ImageSliderSkelton__widget(),
                            ),
                    ),
                  );
                },
              ),
              Positioned(
                bottom: -150,
                child: Container(
                  height: 300,
                  width: ScreenConfig.screenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        kColorPrimary.withOpacity(0.0),
                        kColorPrimary,
                        kColorPrimary.withOpacity(0.0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Bold__text(
                          text: state.isLoading
                              ? 'Movie Title'
                              : state.imageSliderDataList[_currentIndex].title,
                          fontSize: 24.0,
                          maxLines: 2,
                          textOverFlow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        const Regular__text(
                          text: 'Watch Now',
                          fontSize: 14.0,
                        ),
                        const SizedBox(height: kDefaultPadding * 2),
                        Row(
                          children: List.generate(
                            sliderDummyData.length,
                            (int index) {
                              if (index == _currentIndex) {
                                return const SingleIndicator(isActive: true);
                              } else {
                                return const SingleIndicator(isActive: false);
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding * 7.6),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -35,
                right: 32,
                child: Accent_Large__IconButton(
                  icon: Assets.icons.play,
                  borderRadius: 60.0,
                  onTap: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SingleIndicator extends StatelessWidget {
  const SingleIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        height: 4,
        width: 20,
        decoration: BoxDecoration(
          color: isActive ? kColorWhite : kColorWhite.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
