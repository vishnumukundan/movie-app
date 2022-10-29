// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcomingMovies _$$_UpcomingMoviesFromJson(Map<String, dynamic> json) =>
    _$_UpcomingMovies(
      id: json['id'] as int,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_UpcomingMoviesToJson(_$_UpcomingMovies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
