part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    required bool isLoading,
    required bool isError,
    required MovieDetails movieDetailsData,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial() {
    return const MovieDetailsState(
      isLoading: true,
      isError: false,
      movieDetailsData: MovieDetails(
        id: 0,
        title: '',
        backdropPath: '',
        genres: [],
        originalLanguage: '',
        overview: '',
        popularity: 0.0,
        posterPath: '',
        releaseDate: '',
        runtime: 0,
        status: '',
        tagline: '',
        voteAverage: 0.0,
      ),
    );
  }
}
