// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_result_grid_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesResultGridEvent {
  String get genre => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String genre) getMovieByGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String genre)? getMovieByGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String genre)? getMovieByGenre,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieByGenre value) getMovieByGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieByGenre value)? getMovieByGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieByGenre value)? getMovieByGenre,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesResultGridEventCopyWith<MoviesResultGridEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResultGridEventCopyWith<$Res> {
  factory $MoviesResultGridEventCopyWith(MoviesResultGridEvent value,
          $Res Function(MoviesResultGridEvent) then) =
      _$MoviesResultGridEventCopyWithImpl<$Res>;
  $Res call({String genre});
}

/// @nodoc
class _$MoviesResultGridEventCopyWithImpl<$Res>
    implements $MoviesResultGridEventCopyWith<$Res> {
  _$MoviesResultGridEventCopyWithImpl(this._value, this._then);

  final MoviesResultGridEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesResultGridEvent) _then;

  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_value.copyWith(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetMovieByGenreCopyWith<$Res>
    implements $MoviesResultGridEventCopyWith<$Res> {
  factory _$$_GetMovieByGenreCopyWith(
          _$_GetMovieByGenre value, $Res Function(_$_GetMovieByGenre) then) =
      __$$_GetMovieByGenreCopyWithImpl<$Res>;
  @override
  $Res call({String genre});
}

/// @nodoc
class __$$_GetMovieByGenreCopyWithImpl<$Res>
    extends _$MoviesResultGridEventCopyWithImpl<$Res>
    implements _$$_GetMovieByGenreCopyWith<$Res> {
  __$$_GetMovieByGenreCopyWithImpl(
      _$_GetMovieByGenre _value, $Res Function(_$_GetMovieByGenre) _then)
      : super(_value, (v) => _then(v as _$_GetMovieByGenre));

  @override
  _$_GetMovieByGenre get _value => super._value as _$_GetMovieByGenre;

  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_$_GetMovieByGenre(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMovieByGenre implements _GetMovieByGenre {
  const _$_GetMovieByGenre({required this.genre});

  @override
  final String genre;

  @override
  String toString() {
    return 'MoviesResultGridEvent.getMovieByGenre(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieByGenre &&
            const DeepCollectionEquality().equals(other.genre, genre));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genre));

  @JsonKey(ignore: true)
  @override
  _$$_GetMovieByGenreCopyWith<_$_GetMovieByGenre> get copyWith =>
      __$$_GetMovieByGenreCopyWithImpl<_$_GetMovieByGenre>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String genre) getMovieByGenre,
  }) {
    return getMovieByGenre(genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String genre)? getMovieByGenre,
  }) {
    return getMovieByGenre?.call(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String genre)? getMovieByGenre,
    required TResult orElse(),
  }) {
    if (getMovieByGenre != null) {
      return getMovieByGenre(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieByGenre value) getMovieByGenre,
  }) {
    return getMovieByGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieByGenre value)? getMovieByGenre,
  }) {
    return getMovieByGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieByGenre value)? getMovieByGenre,
    required TResult orElse(),
  }) {
    if (getMovieByGenre != null) {
      return getMovieByGenre(this);
    }
    return orElse();
  }
}

abstract class _GetMovieByGenre implements MoviesResultGridEvent {
  const factory _GetMovieByGenre({required final String genre}) =
      _$_GetMovieByGenre;

  @override
  String get genre;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieByGenreCopyWith<_$_GetMovieByGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesResultGridState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  MovieList get movieDataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesResultGridStateCopyWith<MoviesResultGridState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResultGridStateCopyWith<$Res> {
  factory $MoviesResultGridStateCopyWith(MoviesResultGridState value,
          $Res Function(MoviesResultGridState) then) =
      _$MoviesResultGridStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, bool hasError, bool isSuccess, MovieList movieDataList});

  $MovieListCopyWith<$Res> get movieDataList;
}

/// @nodoc
class _$MoviesResultGridStateCopyWithImpl<$Res>
    implements $MoviesResultGridStateCopyWith<$Res> {
  _$MoviesResultGridStateCopyWithImpl(this._value, this._then);

  final MoviesResultGridState _value;
  // ignore: unused_field
  final $Res Function(MoviesResultGridState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSuccess = freezed,
    Object? movieDataList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDataList: movieDataList == freezed
          ? _value.movieDataList
          : movieDataList // ignore: cast_nullable_to_non_nullable
              as MovieList,
    ));
  }

  @override
  $MovieListCopyWith<$Res> get movieDataList {
    return $MovieListCopyWith<$Res>(_value.movieDataList, (value) {
      return _then(_value.copyWith(movieDataList: value));
    });
  }
}

/// @nodoc
abstract class _$$_MoviesResultGridStateCopyWith<$Res>
    implements $MoviesResultGridStateCopyWith<$Res> {
  factory _$$_MoviesResultGridStateCopyWith(_$_MoviesResultGridState value,
          $Res Function(_$_MoviesResultGridState) then) =
      __$$_MoviesResultGridStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, bool hasError, bool isSuccess, MovieList movieDataList});

  @override
  $MovieListCopyWith<$Res> get movieDataList;
}

/// @nodoc
class __$$_MoviesResultGridStateCopyWithImpl<$Res>
    extends _$MoviesResultGridStateCopyWithImpl<$Res>
    implements _$$_MoviesResultGridStateCopyWith<$Res> {
  __$$_MoviesResultGridStateCopyWithImpl(_$_MoviesResultGridState _value,
      $Res Function(_$_MoviesResultGridState) _then)
      : super(_value, (v) => _then(v as _$_MoviesResultGridState));

  @override
  _$_MoviesResultGridState get _value =>
      super._value as _$_MoviesResultGridState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSuccess = freezed,
    Object? movieDataList = freezed,
  }) {
    return _then(_$_MoviesResultGridState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDataList: movieDataList == freezed
          ? _value.movieDataList
          : movieDataList // ignore: cast_nullable_to_non_nullable
              as MovieList,
    ));
  }
}

/// @nodoc

class _$_MoviesResultGridState implements _MoviesResultGridState {
  const _$_MoviesResultGridState(
      {required this.isLoading,
      required this.hasError,
      required this.isSuccess,
      required this.movieDataList});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isSuccess;
  @override
  final MovieList movieDataList;

  @override
  String toString() {
    return 'MoviesResultGridState(isLoading: $isLoading, hasError: $hasError, isSuccess: $isSuccess, movieDataList: $movieDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesResultGridState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality()
                .equals(other.movieDataList, movieDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(movieDataList));

  @JsonKey(ignore: true)
  @override
  _$$_MoviesResultGridStateCopyWith<_$_MoviesResultGridState> get copyWith =>
      __$$_MoviesResultGridStateCopyWithImpl<_$_MoviesResultGridState>(
          this, _$identity);
}

abstract class _MoviesResultGridState implements MoviesResultGridState {
  const factory _MoviesResultGridState(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isSuccess,
      required final MovieList movieDataList}) = _$_MoviesResultGridState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isSuccess;
  @override
  MovieList get movieDataList;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesResultGridStateCopyWith<_$_MoviesResultGridState> get copyWith =>
      throw _privateConstructorUsedError;
}
