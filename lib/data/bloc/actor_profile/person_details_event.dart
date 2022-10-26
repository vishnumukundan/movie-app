part of 'person_details_bloc.dart';

@freezed
class PersonDetailsEvent with _$PersonDetailsEvent {
  const factory PersonDetailsEvent.getPersonDetails({
    required int personId,
  }) = GetPersonDetails;
  const factory PersonDetailsEvent.getMovieList({
    required int personId,
  }) = GetMovieList;
}
