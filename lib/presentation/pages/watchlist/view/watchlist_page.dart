// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/core/utils/generics/get_random_no_from_range.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/movie_horizontal_card_with_playbutton.dart';
import 'package:movie_app/presentation/pages/watchlist/widgets/continue_watching_card.dart';
import 'package:movie_app/presentation/pages/watchlist/widgets/title_with_toggle.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../bloc/watchlist/watchlist_scroll/watchlist_scroll_cubit.dart';
import '../../../components/text.dart';

ScrollController _scrollController = ScrollController();

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _watchlistHeight =
        context.watch<WatchlistScrollCubit>().state.watchlistHeight;
    bool _isWatchlistExpanded =
        context.watch<WatchlistScrollCubit>().state.watchlistExpanded;
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          //
          // countinue watching section
          Container(
            height: getScreenHeightPercentage(40.0),
            width: ScreenConfig.screenWidth,
            color: kColorPrimaryTint_1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kDefaultPadding * 3),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                  child: Medium__text(
                    text: 'Continue Watching',
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                CustomListViewBuilder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sliderDummyData.length,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  contentSpacing: 16.0,
                  scrollPhysics: _isWatchlistExpanded
                      ? const NeverScrollableScrollPhysics()
                      : const ScrollPhysics(),
                  builder: (context, index) {
                    return ContinueWatchingCard__widget(
                      title: sliderDummyData[index]["title"],
                      image: sliderDummyData[index]["image_url"],
                      progress: getRandRange(5, 90) / 100,
                    );
                  },
                ),
              ],
            ),
          ),
          //
          // whatchlist section
          Align(
            alignment: Alignment.bottomCenter,
            child: Background(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 2),
                topRight: Radius.circular(kDefaultPadding * 2),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kDefaultPadding * 2),
                  const TitleWithToggle__widget(),
                  GestureDetector(
                    onVerticalDragDown: (details) {
                      context
                          .read<WatchlistScrollCubit>()
                          .userScrolled(_scrollController);
                    },
                    child: CustomListViewBuilder(
                      controller: _scrollController,
                      padding: const EdgeInsets.only(
                        left: kDefaultPadding * 2,
                        right: kDefaultPadding * 2,
                        bottom: kDefaultPadding * 7,
                      ),
                      contentSpacing: 16.0,
                      itemCount: upcomingMoviesDummyData.length,
                      height: _watchlistHeight,
                      builder: (context, index) {
                        return MovieHorizontalCardWithPlaybutton__widget(
                          title: upcomingMoviesDummyData[index]["title"],
                          image: upcomingMoviesDummyData[index]["poster_path"],
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
