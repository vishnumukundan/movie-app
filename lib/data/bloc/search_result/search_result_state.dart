part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState({
    required bool isLoading,
    required bool hasError,
    required bool isSuccess,
    required MovieList popularDataList,
    required MovieList searchedDataList,
  }) = _SearchResultState;

  factory SearchResultState.initial() {
    return const SearchResultState(
        isLoading: true,
        hasError: false,
        isSuccess: false,
        popularDataList:
            MovieList(page: 0, results: [], totalPages: 0, totalResults: 0),
        searchedDataList:
            MovieList(page: 0, results: [], totalPages: 0, totalResults: 0));
  }
}
