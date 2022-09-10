import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

part 'watchlist_scroll_state.dart';
part 'watchlist_scroll_cubit.freezed.dart';

class WatchlistScrollCubit extends Cubit<WatchlistScrollState> {
  WatchlistScrollCubit()
      : super(WatchlistScrollState.initial(
          watchlistExpanded: false,
          watchlistSectionHeight: getScreenHeightPercentage(63.0),
          watchlistHeight: getScreenHeightPercentage(51.0),
        ));

  void userScrolled(ScrollController controller) {
    controller.addListener(() {
      if (controller.offset > 40.0 &&
          controller.position.userScrollDirection == ScrollDirection.reverse) {
        emit(WatchlistScrollState.initial(
          watchlistExpanded: true,
          watchlistSectionHeight: getScreenHeightPercentage(83.0),
          watchlistHeight: getScreenHeightPercentage(73.0),
        ));
      }
      if (controller.offset < 40.0 &&
          controller.position.userScrollDirection == ScrollDirection.forward) {
        emit(WatchlistScrollState.initial(
          watchlistExpanded: false,
          watchlistSectionHeight: getScreenHeightPercentage(63.0),
          watchlistHeight: getScreenHeightPercentage(51.0),
        ));
      }
    });
  }
}
