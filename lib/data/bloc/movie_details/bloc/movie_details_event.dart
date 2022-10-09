part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.getMovieDetails({
    required String movieId,
  }) = _GetMovieDetails;
}
