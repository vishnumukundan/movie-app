part of 'widgets_functionality_bloc.dart';

@freezed
class WidgetsFunctionalityState with _$WidgetsFunctionalityState {
  const factory WidgetsFunctionalityState({
    ///
    /// state for movie list scroll button
    required int movieListScrollButtonCurrentIndex,
    required String movieListScrollButtonQuery,
    //
  }) = _WidgetsFunctionalityState;
  factory WidgetsFunctionalityState.initial() {
    //
    return const WidgetsFunctionalityState(
        movieListScrollButtonCurrentIndex: 0,
        movieListScrollButtonQuery: TrendigMovies.allDay);
  }
}
