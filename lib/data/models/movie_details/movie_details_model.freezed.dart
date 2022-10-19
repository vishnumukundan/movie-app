// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
mixin _$MovieDetails {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  Videos get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'casts')
  Casts get casts => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  Reviews get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      List<Genre> genres,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      int? runtime,
      String status,
      String tagline,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'videos') Videos videos,
      @JsonKey(name: 'casts') Casts casts,
      @JsonKey(name: 'reviews') Reviews reviews});

  $VideosCopyWith<$Res> get videos;
  $CastsCopyWith<$Res> get casts;
  $ReviewsCopyWith<$Res> get reviews;
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res> implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  final MovieDetails _value;
  // ignore: unused_field
  final $Res Function(MovieDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? videos = freezed,
    Object? casts = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos,
      casts: casts == freezed
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as Casts,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Reviews,
    ));
  }

  @override
  $VideosCopyWith<$Res> get videos {
    return $VideosCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value));
    });
  }

  @override
  $CastsCopyWith<$Res> get casts {
    return $CastsCopyWith<$Res>(_value.casts, (value) {
      return _then(_value.copyWith(casts: value));
    });
  }

  @override
  $ReviewsCopyWith<$Res> get reviews {
    return $ReviewsCopyWith<$Res>(_value.reviews, (value) {
      return _then(_value.copyWith(reviews: value));
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailsCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$$_MovieDetailsCopyWith(
          _$_MovieDetails value, $Res Function(_$_MovieDetails) then) =
      __$$_MovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      List<Genre> genres,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      int? runtime,
      String status,
      String tagline,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'videos') Videos videos,
      @JsonKey(name: 'casts') Casts casts,
      @JsonKey(name: 'reviews') Reviews reviews});

  @override
  $VideosCopyWith<$Res> get videos;
  @override
  $CastsCopyWith<$Res> get casts;
  @override
  $ReviewsCopyWith<$Res> get reviews;
}

/// @nodoc
class __$$_MovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsCopyWithImpl<$Res>
    implements _$$_MovieDetailsCopyWith<$Res> {
  __$$_MovieDetailsCopyWithImpl(
      _$_MovieDetails _value, $Res Function(_$_MovieDetails) _then)
      : super(_value, (v) => _then(v as _$_MovieDetails));

  @override
  _$_MovieDetails get _value => super._value as _$_MovieDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? videos = freezed,
    Object? casts = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_MovieDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos,
      casts: casts == freezed
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as Casts,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Reviews,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetails implements _MovieDetails {
  const _$_MovieDetails(
      {required this.id,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      required final List<Genre> genres,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      this.runtime,
      required this.status,
      required this.tagline,
      required this.title,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'videos') required this.videos,
      @JsonKey(name: 'casts') required this.casts,
      @JsonKey(name: 'reviews') required this.reviews})
      : _genres = genres;

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  final int? runtime;
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'videos')
  final Videos videos;
  @override
  @JsonKey(name: 'casts')
  final Casts casts;
  @override
  @JsonKey(name: 'reviews')
  final Reviews reviews;

  @override
  String toString() {
    return 'MovieDetails(id: $id, backdropPath: $backdropPath, genres: $genres, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, runtime: $runtime, status: $status, tagline: $tagline, title: $title, voteAverage: $voteAverage, videos: $videos, casts: $casts, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.videos, videos) &&
            const DeepCollectionEquality().equals(other.casts, casts) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(runtime),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(tagline),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(videos),
      const DeepCollectionEquality().hash(casts),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      __$$_MovieDetailsCopyWithImpl<_$_MovieDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailsToJson(
      this,
    );
  }
}

abstract class _MovieDetails implements MovieDetails {
  const factory _MovieDetails(
          {required final int id,
          @JsonKey(name: 'backdrop_path') required final String backdropPath,
          required final List<Genre> genres,
          required final String overview,
          required final double popularity,
          @JsonKey(name: 'poster_path') required final String posterPath,
          @JsonKey(name: 'release_date') required final String releaseDate,
          final int? runtime,
          required final String status,
          required final String tagline,
          required final String title,
          @JsonKey(name: 'vote_average') required final double voteAverage,
          @JsonKey(name: 'videos') required final Videos videos,
          @JsonKey(name: 'casts') required final Casts casts,
          @JsonKey(name: 'reviews') required final Reviews reviews}) =
      _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  List<Genre> get genres;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  int? get runtime;
  @override
  String get status;
  @override
  String get tagline;
  @override
  String get title;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'videos')
  Videos get videos;
  @override
  @JsonKey(name: 'casts')
  Casts get casts;
  @override
  @JsonKey(name: 'reviews')
  Reviews get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Casts _$CastsFromJson(Map<String, dynamic> json) {
  return _Casts.fromJson(json);
}

/// @nodoc
mixin _$Casts {
  @JsonKey(name: 'cast')
  List<Cast> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastsCopyWith<Casts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastsCopyWith<$Res> {
  factory $CastsCopyWith(Casts value, $Res Function(Casts) then) =
      _$CastsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'cast') List<Cast> cast});
}

/// @nodoc
class _$CastsCopyWithImpl<$Res> implements $CastsCopyWith<$Res> {
  _$CastsCopyWithImpl(this._value, this._then);

  final Casts _value;
  // ignore: unused_field
  final $Res Function(Casts) _then;

  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc
abstract class _$$_CastsCopyWith<$Res> implements $CastsCopyWith<$Res> {
  factory _$$_CastsCopyWith(_$_Casts value, $Res Function(_$_Casts) then) =
      __$$_CastsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'cast') List<Cast> cast});
}

/// @nodoc
class __$$_CastsCopyWithImpl<$Res> extends _$CastsCopyWithImpl<$Res>
    implements _$$_CastsCopyWith<$Res> {
  __$$_CastsCopyWithImpl(_$_Casts _value, $Res Function(_$_Casts) _then)
      : super(_value, (v) => _then(v as _$_Casts));

  @override
  _$_Casts get _value => super._value as _$_Casts;

  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_$_Casts(
      cast: cast == freezed
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Casts implements _Casts {
  const _$_Casts({@JsonKey(name: 'cast') required final List<Cast> cast})
      : _cast = cast;

  factory _$_Casts.fromJson(Map<String, dynamic> json) =>
      _$$_CastsFromJson(json);

  final List<Cast> _cast;
  @override
  @JsonKey(name: 'cast')
  List<Cast> get cast {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  String toString() {
    return 'Casts(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Casts &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  _$$_CastsCopyWith<_$_Casts> get copyWith =>
      __$$_CastsCopyWithImpl<_$_Casts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastsToJson(
      this,
    );
  }
}

abstract class _Casts implements Casts {
  const factory _Casts(
      {@JsonKey(name: 'cast') required final List<Cast> cast}) = _$_Casts;

  factory _Casts.fromJson(Map<String, dynamic> json) = _$_Casts.fromJson;

  @override
  @JsonKey(name: 'cast')
  List<Cast> get cast;
  @override
  @JsonKey(ignore: true)
  _$$_CastsCopyWith<_$_Casts> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
  String? get profilePath => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'known_for_department')
          String knownForDepartment,
      String name,
      @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
          String? profilePath,
      int order});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$_CastCopyWith(_$_Cast value, $Res Function(_$_Cast) then) =
      __$$_CastCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'known_for_department')
          String knownForDepartment,
      String name,
      @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
          String? profilePath,
      int order});
}

/// @nodoc
class __$$_CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$$_CastCopyWith<$Res> {
  __$$_CastCopyWithImpl(_$_Cast _value, $Res Function(_$_Cast) _then)
      : super(_value, (v) => _then(v as _$_Cast));

  @override
  _$_Cast get _value => super._value as _$_Cast;

  @override
  $Res call({
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_Cast(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cast implements _Cast {
  const _$_Cast(
      {required this.id,
      @JsonKey(name: 'known_for_department')
          required this.knownForDepartment,
      required this.name,
      @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
          this.profilePath,
      required this.order});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'known_for_department')
  final String knownForDepartment;
  @override
  final String name;
  @override
  @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
  final String? profilePath;
  @override
  final int order;

  @override
  String toString() {
    return 'Cast(id: $id, knownForDepartment: $knownForDepartment, name: $name, profilePath: $profilePath, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cast &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.knownForDepartment, knownForDepartment) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(knownForDepartment),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(profilePath),
      const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$$_CastCopyWith<_$_Cast> get copyWith =>
      __$$_CastCopyWithImpl<_$_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {required final int id,
      @JsonKey(name: 'known_for_department')
          required final String knownForDepartment,
      required final String name,
      @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
          final String? profilePath,
      required final int order}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment;
  @override
  String get name;
  @override
  @JsonKey(name: 'profile_path', nullable: true, disallowNullValue: false)
  String? get profilePath;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res> implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  final Genre _value;
  // ignore: unused_field
  final $Res Function(Genre) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$_GenreCopyWith(_$_Genre value, $Res Function(_$_Genre) then) =
      __$$_GenreCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GenreCopyWithImpl<$Res> extends _$GenreCopyWithImpl<$Res>
    implements _$$_GenreCopyWith<$Res> {
  __$$_GenreCopyWithImpl(_$_Genre _value, $Res Function(_$_Genre) _then)
      : super(_value, (v) => _then(v as _$_Genre));

  @override
  _$_Genre get _value => super._value as _$_Genre;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Genre(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genre implements _Genre {
  const _$_Genre({required this.id, required this.name});

  factory _$_Genre.fromJson(Map<String, dynamic> json) =>
      _$$_GenreFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Genre(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Genre &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      __$$_GenreCopyWithImpl<_$_Genre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({required final int id, required final String name}) =
      _$_Genre;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$_Genre.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      throw _privateConstructorUsedError;
}

Reviews _$ReviewsFromJson(Map<String, dynamic> json) {
  return _Reviews.fromJson(json);
}

/// @nodoc
mixin _$Reviews {
  int get page => throw _privateConstructorUsedError;
  List<ReviewsResult>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsCopyWith<Reviews> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsCopyWith<$Res> {
  factory $ReviewsCopyWith(Reviews value, $Res Function(Reviews) then) =
      _$ReviewsCopyWithImpl<$Res>;
  $Res call(
      {int page,
      List<ReviewsResult>? results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$ReviewsCopyWithImpl<$Res> implements $ReviewsCopyWith<$Res> {
  _$ReviewsCopyWithImpl(this._value, this._then);

  final Reviews _value;
  // ignore: unused_field
  final $Res Function(Reviews) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReviewsResult>?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ReviewsCopyWith<$Res> implements $ReviewsCopyWith<$Res> {
  factory _$$_ReviewsCopyWith(
          _$_Reviews value, $Res Function(_$_Reviews) then) =
      __$$_ReviewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      List<ReviewsResult>? results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_ReviewsCopyWithImpl<$Res> extends _$ReviewsCopyWithImpl<$Res>
    implements _$$_ReviewsCopyWith<$Res> {
  __$$_ReviewsCopyWithImpl(_$_Reviews _value, $Res Function(_$_Reviews) _then)
      : super(_value, (v) => _then(v as _$_Reviews));

  @override
  _$_Reviews get _value => super._value as _$_Reviews;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_Reviews(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReviewsResult>?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reviews implements _Reviews {
  const _$_Reviews(
      {required this.page,
      final List<ReviewsResult>? results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$_Reviews.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsFromJson(json);

  @override
  final int page;
  final List<ReviewsResult>? _results;
  @override
  List<ReviewsResult>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'Reviews(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reviews &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewsCopyWith<_$_Reviews> get copyWith =>
      __$$_ReviewsCopyWithImpl<_$_Reviews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsToJson(
      this,
    );
  }
}

abstract class _Reviews implements Reviews {
  const factory _Reviews(
          {required final int page,
          final List<ReviewsResult>? results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$_Reviews;

  factory _Reviews.fromJson(Map<String, dynamic> json) = _$_Reviews.fromJson;

  @override
  int get page;
  @override
  List<ReviewsResult>? get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsCopyWith<_$_Reviews> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewsResult _$ReviewsResultFromJson(Map<String, dynamic> json) {
  return _ReviewsResult.fromJson(json);
}

/// @nodoc
mixin _$ReviewsResult {
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_details')
  AuthorDetails get authorDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsResultCopyWith<ReviewsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsResultCopyWith<$Res> {
  factory $ReviewsResultCopyWith(
          ReviewsResult value, $Res Function(ReviewsResult) then) =
      _$ReviewsResultCopyWithImpl<$Res>;
  $Res call(
      {String author,
      @JsonKey(name: 'author_details')
          AuthorDetails authorDetails,
      @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
          String? content,
      @JsonKey(name: 'created_at')
          String createdAt,
      String id,
      @JsonKey(name: 'updated_at')
          String updatedAt});

  $AuthorDetailsCopyWith<$Res> get authorDetails;
}

/// @nodoc
class _$ReviewsResultCopyWithImpl<$Res>
    implements $ReviewsResultCopyWith<$Res> {
  _$ReviewsResultCopyWithImpl(this._value, this._then);

  final ReviewsResult _value;
  // ignore: unused_field
  final $Res Function(ReviewsResult) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? authorDetails = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorDetails: authorDetails == freezed
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AuthorDetailsCopyWith<$Res> get authorDetails {
    return $AuthorDetailsCopyWith<$Res>(_value.authorDetails, (value) {
      return _then(_value.copyWith(authorDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReviewsResultCopyWith<$Res>
    implements $ReviewsResultCopyWith<$Res> {
  factory _$$_ReviewsResultCopyWith(
          _$_ReviewsResult value, $Res Function(_$_ReviewsResult) then) =
      __$$_ReviewsResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      @JsonKey(name: 'author_details')
          AuthorDetails authorDetails,
      @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
          String? content,
      @JsonKey(name: 'created_at')
          String createdAt,
      String id,
      @JsonKey(name: 'updated_at')
          String updatedAt});

  @override
  $AuthorDetailsCopyWith<$Res> get authorDetails;
}

/// @nodoc
class __$$_ReviewsResultCopyWithImpl<$Res>
    extends _$ReviewsResultCopyWithImpl<$Res>
    implements _$$_ReviewsResultCopyWith<$Res> {
  __$$_ReviewsResultCopyWithImpl(
      _$_ReviewsResult _value, $Res Function(_$_ReviewsResult) _then)
      : super(_value, (v) => _then(v as _$_ReviewsResult));

  @override
  _$_ReviewsResult get _value => super._value as _$_ReviewsResult;

  @override
  $Res call({
    Object? author = freezed,
    Object? authorDetails = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ReviewsResult(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorDetails: authorDetails == freezed
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewsResult implements _ReviewsResult {
  const _$_ReviewsResult(
      {required this.author,
      @JsonKey(name: 'author_details')
          required this.authorDetails,
      @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
          this.content,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      required this.id,
      @JsonKey(name: 'updated_at')
          required this.updatedAt});

  factory _$_ReviewsResult.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsResultFromJson(json);

  @override
  final String author;
  @override
  @JsonKey(name: 'author_details')
  final AuthorDetails authorDetails;
  @override
  @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
  final String? content;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String id;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'ReviewsResult(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewsResult &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.authorDetails, authorDetails) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(authorDetails),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewsResultCopyWith<_$_ReviewsResult> get copyWith =>
      __$$_ReviewsResultCopyWithImpl<_$_ReviewsResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsResultToJson(
      this,
    );
  }
}

abstract class _ReviewsResult implements ReviewsResult {
  const factory _ReviewsResult(
      {required final String author,
      @JsonKey(name: 'author_details')
          required final AuthorDetails authorDetails,
      @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
          final String? content,
      @JsonKey(name: 'created_at')
          required final String createdAt,
      required final String id,
      @JsonKey(name: 'updated_at')
          required final String updatedAt}) = _$_ReviewsResult;

  factory _ReviewsResult.fromJson(Map<String, dynamic> json) =
      _$_ReviewsResult.fromJson;

  @override
  String get author;
  @override
  @JsonKey(name: 'author_details')
  AuthorDetails get authorDetails;
  @override
  @JsonKey(name: 'content', nullable: true, disallowNullValue: false)
  String? get content;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  String get id;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsResultCopyWith<_$_ReviewsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorDetails _$AuthorDetailsFromJson(Map<String, dynamic> json) {
  return _AuthorDetails.fromJson(json);
}

/// @nodoc
mixin _$AuthorDetails {
  String get username => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorDetailsCopyWith<AuthorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorDetailsCopyWith<$Res> {
  factory $AuthorDetailsCopyWith(
          AuthorDetails value, $Res Function(AuthorDetails) then) =
      _$AuthorDetailsCopyWithImpl<$Res>;
  $Res call({String username, double? rating});
}

/// @nodoc
class _$AuthorDetailsCopyWithImpl<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  _$AuthorDetailsCopyWithImpl(this._value, this._then);

  final AuthorDetails _value;
  // ignore: unused_field
  final $Res Function(AuthorDetails) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthorDetailsCopyWith<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  factory _$$_AuthorDetailsCopyWith(
          _$_AuthorDetails value, $Res Function(_$_AuthorDetails) then) =
      __$$_AuthorDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String username, double? rating});
}

/// @nodoc
class __$$_AuthorDetailsCopyWithImpl<$Res>
    extends _$AuthorDetailsCopyWithImpl<$Res>
    implements _$$_AuthorDetailsCopyWith<$Res> {
  __$$_AuthorDetailsCopyWithImpl(
      _$_AuthorDetails _value, $Res Function(_$_AuthorDetails) _then)
      : super(_value, (v) => _then(v as _$_AuthorDetails));

  @override
  _$_AuthorDetails get _value => super._value as _$_AuthorDetails;

  @override
  $Res call({
    Object? username = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_AuthorDetails(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorDetails implements _AuthorDetails {
  const _$_AuthorDetails({required this.username, this.rating});

  factory _$_AuthorDetails.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorDetailsFromJson(json);

  @override
  final String username;
  @override
  final double? rating;

  @override
  String toString() {
    return 'AuthorDetails(username: $username, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorDetails &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorDetailsCopyWith<_$_AuthorDetails> get copyWith =>
      __$$_AuthorDetailsCopyWithImpl<_$_AuthorDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorDetailsToJson(
      this,
    );
  }
}

abstract class _AuthorDetails implements AuthorDetails {
  const factory _AuthorDetails(
      {required final String username,
      final double? rating}) = _$_AuthorDetails;

  factory _AuthorDetails.fromJson(Map<String, dynamic> json) =
      _$_AuthorDetails.fromJson;

  @override
  String get username;
  @override
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorDetailsCopyWith<_$_AuthorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
  List<VideosResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res>;
  $Res call({List<VideosResult> results});
}

/// @nodoc
class _$VideosCopyWithImpl<$Res> implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  final Videos _value;
  // ignore: unused_field
  final $Res Function(Videos) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideosResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$_VideosCopyWith(_$_Videos value, $Res Function(_$_Videos) then) =
      __$$_VideosCopyWithImpl<$Res>;
  @override
  $Res call({List<VideosResult> results});
}

/// @nodoc
class __$$_VideosCopyWithImpl<$Res> extends _$VideosCopyWithImpl<$Res>
    implements _$$_VideosCopyWith<$Res> {
  __$$_VideosCopyWithImpl(_$_Videos _value, $Res Function(_$_Videos) _then)
      : super(_value, (v) => _then(v as _$_Videos));

  @override
  _$_Videos get _value => super._value as _$_Videos;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_Videos(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideosResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Videos implements _Videos {
  const _$_Videos({required final List<VideosResult> results})
      : _results = results;

  factory _$_Videos.fromJson(Map<String, dynamic> json) =>
      _$$_VideosFromJson(json);

  final List<VideosResult> _results;
  @override
  List<VideosResult> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Videos(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Videos &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      __$$_VideosCopyWithImpl<_$_Videos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  const factory _Videos({required final List<VideosResult> results}) =
      _$_Videos;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$_Videos.fromJson;

  @override
  List<VideosResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      throw _privateConstructorUsedError;
}

VideosResult _$VideosResultFromJson(Map<String, dynamic> json) {
  return _VideosResult.fromJson(json);
}

/// @nodoc
mixin _$VideosResult {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String get publishedAt => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosResultCopyWith<VideosResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosResultCopyWith<$Res> {
  factory $VideosResultCopyWith(
          VideosResult value, $Res Function(VideosResult) then) =
      _$VideosResultCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String key,
      @JsonKey(name: 'published_at') String publishedAt,
      String type});
}

/// @nodoc
class _$VideosResultCopyWithImpl<$Res> implements $VideosResultCopyWith<$Res> {
  _$VideosResultCopyWithImpl(this._value, this._then);

  final VideosResult _value;
  // ignore: unused_field
  final $Res Function(VideosResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? publishedAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VideosResultCopyWith<$Res>
    implements $VideosResultCopyWith<$Res> {
  factory _$$_VideosResultCopyWith(
          _$_VideosResult value, $Res Function(_$_VideosResult) then) =
      __$$_VideosResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String key,
      @JsonKey(name: 'published_at') String publishedAt,
      String type});
}

/// @nodoc
class __$$_VideosResultCopyWithImpl<$Res>
    extends _$VideosResultCopyWithImpl<$Res>
    implements _$$_VideosResultCopyWith<$Res> {
  __$$_VideosResultCopyWithImpl(
      _$_VideosResult _value, $Res Function(_$_VideosResult) _then)
      : super(_value, (v) => _then(v as _$_VideosResult));

  @override
  _$_VideosResult get _value => super._value as _$_VideosResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? publishedAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_VideosResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideosResult implements _VideosResult {
  const _$_VideosResult(
      {required this.id,
      required this.name,
      required this.key,
      @JsonKey(name: 'published_at') required this.publishedAt,
      required this.type});

  factory _$_VideosResult.fromJson(Map<String, dynamic> json) =>
      _$$_VideosResultFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String key;
  @override
  @JsonKey(name: 'published_at')
  final String publishedAt;
  @override
  final String type;

  @override
  String toString() {
    return 'VideosResult(id: $id, name: $name, key: $key, publishedAt: $publishedAt, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideosResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_VideosResultCopyWith<_$_VideosResult> get copyWith =>
      __$$_VideosResultCopyWithImpl<_$_VideosResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosResultToJson(
      this,
    );
  }
}

abstract class _VideosResult implements VideosResult {
  const factory _VideosResult(
      {required final String id,
      required final String name,
      required final String key,
      @JsonKey(name: 'published_at') required final String publishedAt,
      required final String type}) = _$_VideosResult;

  factory _VideosResult.fromJson(Map<String, dynamic> json) =
      _$_VideosResult.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get key;
  @override
  @JsonKey(name: 'published_at')
  String get publishedAt;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_VideosResultCopyWith<_$_VideosResult> get copyWith =>
      throw _privateConstructorUsedError;
}
