// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    required List<Genre> genres,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required int runtime,
    required String status,
    required String tagline,
    required String title,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'videos') required Videos videos,
    @JsonKey(name: 'casts') required Casts casts,
    @JsonKey(name: 'reviews') required Reviews reviews,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}

//

@freezed
class Casts with _$Casts {
  const factory Casts({
    @JsonKey(name: 'cast') required List<Cast> cast,
  }) = _Casts;

  factory Casts.fromJson(Map<String, dynamic> json) => _$CastsFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    required int id,
    @JsonKey(name: 'known_for_department') required String knownForDepartment,
    required String name,
    @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
        String? profilePath,
    required int order,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
//

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class Reviews with _$Reviews {
  const factory Reviews({
    required int page,
    required List<ReviewsResult> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _Reviews;

  factory Reviews.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFromJson(json);
}

@freezed
class ReviewsResult with _$ReviewsResult {
  const factory ReviewsResult({
    required String author,
    @JsonKey(name: 'author_details') required AuthorDetails authorDetails,
    @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
        String? content,
    @JsonKey(name: 'created_at') required String createdAt,
    required String id,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ReviewsResult;

  factory ReviewsResult.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResultFromJson(json);
}

@freezed
class AuthorDetails with _$AuthorDetails {
  const factory AuthorDetails({
    required String username,
    @JsonKey(name: 'rating', nullable: true, disallowNullValue: false)
        Rating? rating,
  }) = _AuthorDetails;

  factory AuthorDetails.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsFromJson(json);
}

@freezed
abstract class Rating with _$Rating {
  const factory Rating({
    required String value,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class Videos with _$Videos {
  const factory Videos({
    required List<VideosResult> results,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}

@freezed
class VideosResult with _$VideosResult {
  const factory VideosResult({
    required String id,
    required String name,
    required String key,
    @JsonKey(name: 'published_at') required String publishedAt,
    required String type,
  }) = _VideosResult;

  factory VideosResult.fromJson(Map<String, dynamic> json) =>
      _$VideosResultFromJson(json);
}
