part of 'upcoming_movies_bloc.dart';

@freezed
class UpcomingMoviesEvent with _$UpcomingMoviesEvent {
  const factory UpcomingMoviesEvent.getUpcomingMovies() = GetUpcomingMovies;
}
