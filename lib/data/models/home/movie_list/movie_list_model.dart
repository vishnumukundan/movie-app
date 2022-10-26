// To parse this JSON data, do
//
//     final movieList = movieListFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_model.freezed.dart';
part 'movie_list_model.g.dart';

@freezed
class MovieList with _$MovieList {
  const factory MovieList({
    required int page,
    required List<Result> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieList;

  factory MovieList.fromJson(Map<String, dynamic> json) =>
      _$MovieListFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required int id,
    @JsonKey(name: 'poster_path') String? posterPath,
    double? popularity,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
