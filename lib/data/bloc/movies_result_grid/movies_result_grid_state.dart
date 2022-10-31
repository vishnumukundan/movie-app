part of 'movies_result_grid_bloc.dart';

@freezed
class MoviesResultGridState with _$MoviesResultGridState {
  const factory MoviesResultGridState({
    required bool isLoading,
    required bool hasError,
    required bool isSuccess,
    required MovieList movieDataList,
  }) = _MoviesResultGridState;
  factory MoviesResultGridState.initial() {
    return const MoviesResultGridState(
      isLoading: true,
      hasError: false,
      isSuccess: false,
      movieDataList: MovieList(
        page: 0,
        results: [],
        totalPages: 0,
        totalResults: 0,
      ),
    );
  }
}
