// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movie_app/data/models/discover/genre/genre_model.dart';
part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    required String title,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    required List<Genre> genres,
    @JsonKey(name: 'original_language') required String originalLanguage,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required int runtime,
    required String status,
    required String tagline,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}
