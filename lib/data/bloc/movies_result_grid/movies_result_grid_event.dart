part of 'movies_result_grid_bloc.dart';

@freezed
class MoviesResultGridEvent with _$MoviesResultGridEvent {
  const factory MoviesResultGridEvent.getMovieByGenre({
    required String genre,
  }) = _GetMovieByGenre;
  const factory MoviesResultGridEvent.getMovieByPerson({
    required String personId,
  }) = _GetMovieByPerson;
}
