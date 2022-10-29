// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upcoming_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingMovies _$UpcomingMoviesFromJson(Map<String, dynamic> json) {
  return _UpcomingMovies.fromJson(json);
}

/// @nodoc
mixin _$UpcomingMovies {
  int get id => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingMoviesCopyWith<UpcomingMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingMoviesCopyWith<$Res> {
  factory $UpcomingMoviesCopyWith(
          UpcomingMovies value, $Res Function(UpcomingMovies) then) =
      _$UpcomingMoviesCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      String? title});
}

/// @nodoc
class _$UpcomingMoviesCopyWithImpl<$Res>
    implements $UpcomingMoviesCopyWith<$Res> {
  _$UpcomingMoviesCopyWithImpl(this._value, this._then);

  final UpcomingMovies _value;
  // ignore: unused_field
  final $Res Function(UpcomingMovies) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UpcomingMoviesCopyWith<$Res>
    implements $UpcomingMoviesCopyWith<$Res> {
  factory _$$_UpcomingMoviesCopyWith(
          _$_UpcomingMovies value, $Res Function(_$_UpcomingMovies) then) =
      __$$_UpcomingMoviesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      String? title});
}

/// @nodoc
class __$$_UpcomingMoviesCopyWithImpl<$Res>
    extends _$UpcomingMoviesCopyWithImpl<$Res>
    implements _$$_UpcomingMoviesCopyWith<$Res> {
  __$$_UpcomingMoviesCopyWithImpl(
      _$_UpcomingMovies _value, $Res Function(_$_UpcomingMovies) _then)
      : super(_value, (v) => _then(v as _$_UpcomingMovies));

  @override
  _$_UpcomingMovies get _value => super._value as _$_UpcomingMovies;

  @override
  $Res call({
    Object? id = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_UpcomingMovies(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpcomingMovies implements _UpcomingMovies {
  const _$_UpcomingMovies(
      {required this.id,
      this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.title});

  factory _$_UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$$_UpcomingMoviesFromJson(json);

  @override
  final int id;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final String? title;

  @override
  String toString() {
    return 'UpcomingMovies(id: $id, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpcomingMovies &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_UpcomingMoviesCopyWith<_$_UpcomingMovies> get copyWith =>
      __$$_UpcomingMoviesCopyWithImpl<_$_UpcomingMovies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpcomingMoviesToJson(
      this,
    );
  }
}

abstract class _UpcomingMovies implements UpcomingMovies {
  const factory _UpcomingMovies(
      {required final int id,
      final String? overview,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'release_date') final String? releaseDate,
      final String? title}) = _$_UpcomingMovies;

  factory _UpcomingMovies.fromJson(Map<String, dynamic> json) =
      _$_UpcomingMovies.fromJson;

  @override
  int get id;
  @override
  String? get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_UpcomingMoviesCopyWith<_$_UpcomingMovies> get copyWith =>
      throw _privateConstructorUsedError;
}
