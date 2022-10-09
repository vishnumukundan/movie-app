// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      id: json['id'] as int,
      title: json['title'] as String,
      backdropPath: json['backdrop_path'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      originalLanguage: json['original_language'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      runtime: json['runtime'] as int,
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'genres': instance.genres,
      'original_language': instance.originalLanguage,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'vote_average': instance.voteAverage,
    };
