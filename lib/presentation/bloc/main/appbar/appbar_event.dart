part of 'appbar_bloc.dart';

@freezed
class AppbarEvent with _$AppbarEvent {
  const factory AppbarEvent.moviesSelected() = _MoviesSelected;
  const factory AppbarEvent.tvShowsSelected() = _TvShowsSelected;
}
