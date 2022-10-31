// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @Default([]) List<Genre>? genres,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    int? runtime,
    String? status,
    String? tagline,
    String? title,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'videos') Videos? videos,
    @JsonKey(name: 'casts') Casts? casts,
    @JsonKey(name: 'reviews') Reviews? reviews,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}

// casts
@freezed
class Casts with _$Casts {
  const factory Casts({
    @Default([]) @JsonKey(name: 'cast') List<Cast>? cast,
  }) = _Casts;

  factory Casts.fromJson(Map<String, dynamic> json) => _$CastsFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    required int id,
    @JsonKey(name: 'known_for_department')
        String? knownForDepartment,
    String? name,
    @JsonKey(
      name: 'profile_path',
    )
        String? profilePath,
    int? order,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}

// genres
@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    String? name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

// reviews
@freezed
class Reviews with _$Reviews {
  const factory Reviews({
    int? page,
    List<ReviewsResult>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _Reviews;

  factory Reviews.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFromJson(json);
}

@freezed
class ReviewsResult with _$ReviewsResult {
  const factory ReviewsResult({
    String? author,
    @JsonKey(name: 'author_details') AuthorDetails? authorDetails,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'created_at') String? createdAt,
    String? id,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ReviewsResult;

  factory ReviewsResult.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResultFromJson(json);
}

@freezed
class AuthorDetails with _$AuthorDetails {
  const factory AuthorDetails({
    String? username,
    double? rating,
  }) = _AuthorDetails;

  factory AuthorDetails.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsFromJson(json);
}

// videos
@freezed
class Videos with _$Videos {
  const factory Videos({
    @Default([]) List<VideosResult>? results,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}

@freezed
class VideosResult with _$VideosResult {
  const factory VideosResult({
    String? id,
    String? name,
    String? key,
    @JsonKey(name: 'published_at') String? publishedAt,
    String? type,
  }) = _VideosResult;

  factory VideosResult.fromJson(Map<String, dynamic> json) =>
      _$VideosResultFromJson(json);
}
