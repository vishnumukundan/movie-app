part of 'person_details_bloc.dart';

@freezed
class PersonDetailsState with _$PersonDetailsState {
  const factory PersonDetailsState({
    required bool isLoading,
    required bool hasError,
    required bool success,
    PersonDetails? personData,
    MovieList? movieDataList,
  }) = _PersonDetailsState;

  factory PersonDetailsState.initial() {
    return const PersonDetailsState(
      isLoading: true,
      hasError: false,
      success: false,
      personData: PersonDetails(id: 0),
      movieDataList: MovieList(
        page: 0,
        results: [],
        totalPages: 0,
        totalResults: 0,
      ),
    );
  }
}
