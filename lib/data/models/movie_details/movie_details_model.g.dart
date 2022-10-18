// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      id: json['id'] as int,
      backdropPath: json['backdrop_path'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      runtime: json['runtime'] as int,
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      videos: Videos.fromJson(json['videos'] as Map<String, dynamic>),
      casts: Casts.fromJson(json['casts'] as Map<String, dynamic>),
      reviews: Reviews.fromJson(json['reviews'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'videos': instance.videos.toJson(),
      'casts': instance.casts.toJson(),
      'reviews': instance.reviews.toJson(),
    };

_$_Casts _$$_CastsFromJson(Map<String, dynamic> json) => _$_Casts(
      cast: (json['cast'] as List<dynamic>)
          .map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CastsToJson(_$_Casts instance) => <String, dynamic>{
      'cast': instance.cast.map((e) => e.toJson()).toList(),
    };

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      id: json['id'] as int,
      knownForDepartment: json['known_for_department'] as String,
      name: json['name'] as String,
      profilePath: json['profile_path'] as String?,
      order: json['order'] as int,
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'known_for_department': instance.knownForDepartment,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profile_path', instance.profilePath);
  val['order'] = instance.order;
  return val;
}

_$_Genre _$$_GenreFromJson(Map<String, dynamic> json) => _$_Genre(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_GenreToJson(_$_Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Reviews _$$_ReviewsFromJson(Map<String, dynamic> json) => _$_Reviews(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ReviewsResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_ReviewsToJson(_$_Reviews instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$_ReviewsResult _$$_ReviewsResultFromJson(Map<String, dynamic> json) =>
    _$_ReviewsResult(
      author: json['author'] as String,
      authorDetails: AuthorDetails.fromJson(
          json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String?,
      createdAt: json['created_at'] as String,
      id: json['id'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$_ReviewsResultToJson(_$_ReviewsResult instance) {
  final val = <String, dynamic>{
    'author': instance.author,
    'author_details': instance.authorDetails.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('content', instance.content);
  val['created_at'] = instance.createdAt;
  val['id'] = instance.id;
  val['updated_at'] = instance.updatedAt;
  return val;
}

_$_AuthorDetails _$$_AuthorDetailsFromJson(Map<String, dynamic> json) =>
    _$_AuthorDetails(
      username: json['username'] as String,
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthorDetailsToJson(_$_AuthorDetails instance) {
  final val = <String, dynamic>{
    'username': instance.username,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rating', instance.rating?.toJson());
  return val;
}

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_Videos _$$_VideosFromJson(Map<String, dynamic> json) => _$_Videos(
      results: (json['results'] as List<dynamic>)
          .map((e) => VideosResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VideosToJson(_$_Videos instance) => <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_$_VideosResult _$$_VideosResultFromJson(Map<String, dynamic> json) =>
    _$_VideosResult(
      id: json['id'] as String,
      name: json['name'] as String,
      key: json['key'] as String,
      publishedAt: json['published_at'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_VideosResultToJson(_$_VideosResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'published_at': instance.publishedAt,
      'type': instance.type,
    };
