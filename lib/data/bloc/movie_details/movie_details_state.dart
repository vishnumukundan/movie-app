part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    required bool isLoading,
    required bool hasError,
    required MovieDetails movieDetailsData,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial() {
    return const MovieDetailsState(
      isLoading: true,
      hasError: false,
      movieDetailsData: MovieDetails(
        id: 0,
        backdropPath: '',
        genres: [],
        overview: '',
        popularity: 0.0,
        posterPath: '',
        releaseDate: '',
        runtime: 0,
        status: '',
        tagline: '',
        title: '',
        voteAverage: 0.0,
        videos: Videos(results: []),
        casts: Casts(cast: []),
        reviews: Reviews(
          page: 0,
          results: [],
          totalPages: 0,
          totalResults: 0,
        ),
      ),
    );
  }
}
