part of 'home_data_bloc.dart';

@freezed
class HomeDataEvent with _$HomeDataEvent {
  const factory HomeDataEvent.getPopularMovies() = _GetPopularMovies;
  const factory HomeDataEvent.getTrendingMovies({
    required String dayOrWeek,
  }) = _GetTrendingMovies;
  const factory HomeDataEvent.getTopTamilMovies() = _GetTopTamilMovies;
  const factory HomeDataEvent.getTopHindiMovies() = _GetTopHindiMovies;
  const factory HomeDataEvent.getTopMalayalamMovies() = _GetTopMalayalamMovies;
}
