part of 'search_result_bloc.dart';

@freezed
class SearchResultEvent with _$SearchResultEvent {
  const factory SearchResultEvent.getPopularMovies() = _GetPopularMovies;
  const factory SearchResultEvent.getSearchedMovies({
    required String query,
  }) = _GetSearchedMovies;
}
