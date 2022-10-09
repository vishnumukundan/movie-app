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
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;

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
      String title,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      List<Genre> genres,
      @JsonKey(name: 'original_language') String originalLanguage,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      int runtime,
      String status,
      String tagline,
      @JsonKey(name: 'vote_average') double voteAverage});
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
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? originalLanguage = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
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
      String title,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      List<Genre> genres,
      @JsonKey(name: 'original_language') String originalLanguage,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      int runtime,
      String status,
      String tagline,
      @JsonKey(name: 'vote_average') double voteAverage});
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
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? originalLanguage = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$_MovieDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetails implements _MovieDetails {
  const _$_MovieDetails(
      {required this.id,
      required this.title,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      required final List<Genre> genres,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      required this.runtime,
      required this.status,
      required this.tagline,
      @JsonKey(name: 'vote_average') required this.voteAverage})
      : _genres = genres;

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsFromJson(json);

  @override
  final int id;
  @override
  final String title;
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
  @JsonKey(name: 'original_language')
  final String originalLanguage;
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
  final int runtime;
  @override
  final String status;
  @override
  final String tagline;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @override
  String toString() {
    return 'MovieDetails(id: $id, title: $title, backdropPath: $backdropPath, genres: $genres, originalLanguage: $originalLanguage, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, runtime: $runtime, status: $status, tagline: $tagline, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
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
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(originalLanguage),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(runtime),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(tagline),
      const DeepCollectionEquality().hash(voteAverage));

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
      required final String title,
      @JsonKey(name: 'backdrop_path')
          required final String backdropPath,
      required final List<Genre> genres,
      @JsonKey(name: 'original_language')
          required final String originalLanguage,
      required final String overview,
      required final double popularity,
      @JsonKey(name: 'poster_path')
          required final String posterPath,
      @JsonKey(name: 'release_date')
          required final String releaseDate,
      required final int runtime,
      required final String status,
      required final String tagline,
      @JsonKey(name: 'vote_average')
          required final double voteAverage}) = _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  List<Genre> get genres;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
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
  int get runtime;
  @override
  String get status;
  @override
  String get tagline;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
