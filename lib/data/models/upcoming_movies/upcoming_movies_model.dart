// To parse this JSON data, do
//
//     final upcomingMovies = upcomingMoviesFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_movies_model.freezed.dart';
part 'upcoming_movies_model.g.dart';

@freezed
abstract class UpcomingMovies with _$UpcomingMovies {
  const factory UpcomingMovies({
    required int id,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    String? title,
  }) = _UpcomingMovies;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}
