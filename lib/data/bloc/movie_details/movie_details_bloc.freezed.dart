// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsEvent {
  String get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getMovieDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetails value) getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieDetails value)? getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetails value)? getMovieDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res>;
  $Res call({String movieId});
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  final MovieDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsEvent) _then;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetMovieDetailsCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory _$$_GetMovieDetailsCopyWith(
          _$_GetMovieDetails value, $Res Function(_$_GetMovieDetails) then) =
      __$$_GetMovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String movieId});
}

/// @nodoc
class __$$_GetMovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res>
    implements _$$_GetMovieDetailsCopyWith<$Res> {
  __$$_GetMovieDetailsCopyWithImpl(
      _$_GetMovieDetails _value, $Res Function(_$_GetMovieDetails) _then)
      : super(_value, (v) => _then(v as _$_GetMovieDetails));

  @override
  _$_GetMovieDetails get _value => super._value as _$_GetMovieDetails;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$_GetMovieDetails(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMovieDetails implements _GetMovieDetails {
  const _$_GetMovieDetails({required this.movieId});

  @override
  final String movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.getMovieDetails(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieDetails &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  _$$_GetMovieDetailsCopyWith<_$_GetMovieDetails> get copyWith =>
      __$$_GetMovieDetailsCopyWithImpl<_$_GetMovieDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getMovieDetails,
  }) {
    return getMovieDetails(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getMovieDetails,
  }) {
    return getMovieDetails?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getMovieDetails,
    required TResult orElse(),
  }) {
    if (getMovieDetails != null) {
      return getMovieDetails(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetails value) getMovieDetails,
  }) {
    return getMovieDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieDetails value)? getMovieDetails,
  }) {
    return getMovieDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetails value)? getMovieDetails,
    required TResult orElse(),
  }) {
    if (getMovieDetails != null) {
      return getMovieDetails(this);
    }
    return orElse();
  }
}

abstract class _GetMovieDetails implements MovieDetailsEvent {
  const factory _GetMovieDetails({required final String movieId}) =
      _$_GetMovieDetails;

  @override
  String get movieId;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieDetailsCopyWith<_$_GetMovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  MovieDetails get movieDetailsData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError, MovieDetails movieDetailsData});

  $MovieDetailsCopyWith<$Res> get movieDetailsData;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  final MovieDetailsState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? movieDetailsData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDetailsData: movieDetailsData == freezed
          ? _value.movieDetailsData
          : movieDetailsData // ignore: cast_nullable_to_non_nullable
              as MovieDetails,
    ));
  }

  @override
  $MovieDetailsCopyWith<$Res> get movieDetailsData {
    return $MovieDetailsCopyWith<$Res>(_value.movieDetailsData, (value) {
      return _then(_value.copyWith(movieDetailsData: value));
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailsStateCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory _$$_MovieDetailsStateCopyWith(_$_MovieDetailsState value,
          $Res Function(_$_MovieDetailsState) then) =
      __$$_MovieDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError, MovieDetails movieDetailsData});

  @override
  $MovieDetailsCopyWith<$Res> get movieDetailsData;
}

/// @nodoc
class __$$_MovieDetailsStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements _$$_MovieDetailsStateCopyWith<$Res> {
  __$$_MovieDetailsStateCopyWithImpl(
      _$_MovieDetailsState _value, $Res Function(_$_MovieDetailsState) _then)
      : super(_value, (v) => _then(v as _$_MovieDetailsState));

  @override
  _$_MovieDetailsState get _value => super._value as _$_MovieDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? movieDetailsData = freezed,
  }) {
    return _then(_$_MovieDetailsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDetailsData: movieDetailsData == freezed
          ? _value.movieDetailsData
          : movieDetailsData // ignore: cast_nullable_to_non_nullable
              as MovieDetails,
    ));
  }
}

/// @nodoc

class _$_MovieDetailsState implements _MovieDetailsState {
  const _$_MovieDetailsState(
      {required this.isLoading,
      required this.isError,
      required this.movieDetailsData});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final MovieDetails movieDetailsData;

  @override
  String toString() {
    return 'MovieDetailsState(isLoading: $isLoading, isError: $isError, movieDetailsData: $movieDetailsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.movieDetailsData, movieDetailsData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(movieDetailsData));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDetailsStateCopyWith<_$_MovieDetailsState> get copyWith =>
      __$$_MovieDetailsStateCopyWithImpl<_$_MovieDetailsState>(
          this, _$identity);
}

abstract class _MovieDetailsState implements MovieDetailsState {
  const factory _MovieDetailsState(
      {required final bool isLoading,
      required final bool isError,
      required final MovieDetails movieDetailsData}) = _$_MovieDetailsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  MovieDetails get movieDetailsData;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsStateCopyWith<_$_MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
