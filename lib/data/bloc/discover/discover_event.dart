part of 'discover_bloc.dart';

@freezed
class DiscoverEvent with _$DiscoverEvent {
  const factory DiscoverEvent.getMovieGenres() = GetMovieGenres;
  const factory DiscoverEvent.getPopularPersons() = GetPopularPersons;
}
