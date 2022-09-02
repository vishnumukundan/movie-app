part of 'watchlist_scroll_cubit.dart';

@freezed
class WatchlistScrollState with _$WatchlistScrollState {
  const factory WatchlistScrollState.initial({
    required bool watchlistExpanded,
    required double watchlistSectionHeight,
    required double watchlistHeight,
  }) = _Initial;
}
