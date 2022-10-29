part of 'upcoming_movies_bloc.dart';

@freezed
class UpcomingMoviesState with _$UpcomingMoviesState {
  const factory UpcomingMoviesState({
    required bool isLoading,
    required bool hasError,
    required bool isSuccess,
    required List<UpcomingMovies> dataList,
  }) = _UpcomingMoviesState;

  factory UpcomingMoviesState.initial() {
    return const UpcomingMoviesState(
      isLoading: true,
      hasError: false,
      isSuccess: false,
      dataList: [],
    );
  }
}
