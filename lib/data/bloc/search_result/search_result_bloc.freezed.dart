// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPopularMovies,
    required TResult Function(String? query) getSearchedMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(String? query)? getSearchedMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(String? query)? getSearchedMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPopularMovies value) getPopularMovies,
    required TResult Function(_GetSearchedMovies value) getSearchedMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetSearchedMovies value)? getSearchedMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetSearchedMovies value)? getSearchedMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultEventCopyWith<$Res> {
  factory $SearchResultEventCopyWith(
          SearchResultEvent value, $Res Function(SearchResultEvent) then) =
      _$SearchResultEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchResultEventCopyWithImpl<$Res>
    implements $SearchResultEventCopyWith<$Res> {
  _$SearchResultEventCopyWithImpl(this._value, this._then);

  final SearchResultEvent _value;
  // ignore: unused_field
  final $Res Function(SearchResultEvent) _then;
}

/// @nodoc
abstract class _$$_GetPopularMoviesCopyWith<$Res> {
  factory _$$_GetPopularMoviesCopyWith(
          _$_GetPopularMovies value, $Res Function(_$_GetPopularMovies) then) =
      __$$_GetPopularMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPopularMoviesCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res>
    implements _$$_GetPopularMoviesCopyWith<$Res> {
  __$$_GetPopularMoviesCopyWithImpl(
      _$_GetPopularMovies _value, $Res Function(_$_GetPopularMovies) _then)
      : super(_value, (v) => _then(v as _$_GetPopularMovies));

  @override
  _$_GetPopularMovies get _value => super._value as _$_GetPopularMovies;
}

/// @nodoc

class _$_GetPopularMovies implements _GetPopularMovies {
  const _$_GetPopularMovies();

  @override
  String toString() {
    return 'SearchResultEvent.getPopularMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPopularMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPopularMovies,
    required TResult Function(String? query) getSearchedMovies,
  }) {
    return getPopularMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(String? query)? getSearchedMovies,
  }) {
    return getPopularMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(String? query)? getSearchedMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPopularMovies value) getPopularMovies,
    required TResult Function(_GetSearchedMovies value) getSearchedMovies,
  }) {
    return getPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetSearchedMovies value)? getSearchedMovies,
  }) {
    return getPopularMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetSearchedMovies value)? getSearchedMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies(this);
    }
    return orElse();
  }
}

abstract class _GetPopularMovies implements SearchResultEvent {
  const factory _GetPopularMovies() = _$_GetPopularMovies;
}

/// @nodoc
abstract class _$$_GetSearchedMoviesCopyWith<$Res> {
  factory _$$_GetSearchedMoviesCopyWith(_$_GetSearchedMovies value,
          $Res Function(_$_GetSearchedMovies) then) =
      __$$_GetSearchedMoviesCopyWithImpl<$Res>;
  $Res call({String? query});
}

/// @nodoc
class __$$_GetSearchedMoviesCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res>
    implements _$$_GetSearchedMoviesCopyWith<$Res> {
  __$$_GetSearchedMoviesCopyWithImpl(
      _$_GetSearchedMovies _value, $Res Function(_$_GetSearchedMovies) _then)
      : super(_value, (v) => _then(v as _$_GetSearchedMovies));

  @override
  _$_GetSearchedMovies get _value => super._value as _$_GetSearchedMovies;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_GetSearchedMovies(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetSearchedMovies implements _GetSearchedMovies {
  const _$_GetSearchedMovies({required this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'SearchResultEvent.getSearchedMovies(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSearchedMovies &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$_GetSearchedMoviesCopyWith<_$_GetSearchedMovies> get copyWith =>
      __$$_GetSearchedMoviesCopyWithImpl<_$_GetSearchedMovies>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPopularMovies,
    required TResult Function(String? query) getSearchedMovies,
  }) {
    return getSearchedMovies(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(String? query)? getSearchedMovies,
  }) {
    return getSearchedMovies?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(String? query)? getSearchedMovies,
    required TResult orElse(),
  }) {
    if (getSearchedMovies != null) {
      return getSearchedMovies(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPopularMovies value) getPopularMovies,
    required TResult Function(_GetSearchedMovies value) getSearchedMovies,
  }) {
    return getSearchedMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetSearchedMovies value)? getSearchedMovies,
  }) {
    return getSearchedMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetSearchedMovies value)? getSearchedMovies,
    required TResult orElse(),
  }) {
    if (getSearchedMovies != null) {
      return getSearchedMovies(this);
    }
    return orElse();
  }
}

abstract class _GetSearchedMovies implements SearchResultEvent {
  const factory _GetSearchedMovies({required final String? query}) =
      _$_GetSearchedMovies;

  String? get query;
  @JsonKey(ignore: true)
  _$$_GetSearchedMoviesCopyWith<_$_GetSearchedMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchResultState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  MovieList get popularDataList => throw _privateConstructorUsedError;
  MovieList get searchedDataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultStateCopyWith<SearchResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultStateCopyWith<$Res> {
  factory $SearchResultStateCopyWith(
          SearchResultState value, $Res Function(SearchResultState) then) =
      _$SearchResultStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isSuccess,
      MovieList popularDataList,
      MovieList searchedDataList});

  $MovieListCopyWith<$Res> get popularDataList;
  $MovieListCopyWith<$Res> get searchedDataList;
}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._value, this._then);

  final SearchResultState _value;
  // ignore: unused_field
  final $Res Function(SearchResultState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSuccess = freezed,
    Object? popularDataList = freezed,
    Object? searchedDataList = freezed,
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
      popularDataList: popularDataList == freezed
          ? _value.popularDataList
          : popularDataList // ignore: cast_nullable_to_non_nullable
              as MovieList,
      searchedDataList: searchedDataList == freezed
          ? _value.searchedDataList
          : searchedDataList // ignore: cast_nullable_to_non_nullable
              as MovieList,
    ));
  }

  @override
  $MovieListCopyWith<$Res> get popularDataList {
    return $MovieListCopyWith<$Res>(_value.popularDataList, (value) {
      return _then(_value.copyWith(popularDataList: value));
    });
  }

  @override
  $MovieListCopyWith<$Res> get searchedDataList {
    return $MovieListCopyWith<$Res>(_value.searchedDataList, (value) {
      return _then(_value.copyWith(searchedDataList: value));
    });
  }
}

/// @nodoc
abstract class _$$_SearchResultStateCopyWith<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  factory _$$_SearchResultStateCopyWith(_$_SearchResultState value,
          $Res Function(_$_SearchResultState) then) =
      __$$_SearchResultStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isSuccess,
      MovieList popularDataList,
      MovieList searchedDataList});

  @override
  $MovieListCopyWith<$Res> get popularDataList;
  @override
  $MovieListCopyWith<$Res> get searchedDataList;
}

/// @nodoc
class __$$_SearchResultStateCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res>
    implements _$$_SearchResultStateCopyWith<$Res> {
  __$$_SearchResultStateCopyWithImpl(
      _$_SearchResultState _value, $Res Function(_$_SearchResultState) _then)
      : super(_value, (v) => _then(v as _$_SearchResultState));

  @override
  _$_SearchResultState get _value => super._value as _$_SearchResultState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSuccess = freezed,
    Object? popularDataList = freezed,
    Object? searchedDataList = freezed,
  }) {
    return _then(_$_SearchResultState(
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
      popularDataList: popularDataList == freezed
          ? _value.popularDataList
          : popularDataList // ignore: cast_nullable_to_non_nullable
              as MovieList,
      searchedDataList: searchedDataList == freezed
          ? _value.searchedDataList
          : searchedDataList // ignore: cast_nullable_to_non_nullable
              as MovieList,
    ));
  }
}

/// @nodoc

class _$_SearchResultState implements _SearchResultState {
  const _$_SearchResultState(
      {required this.isLoading,
      required this.hasError,
      required this.isSuccess,
      required this.popularDataList,
      required this.searchedDataList});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isSuccess;
  @override
  final MovieList popularDataList;
  @override
  final MovieList searchedDataList;

  @override
  String toString() {
    return 'SearchResultState(isLoading: $isLoading, hasError: $hasError, isSuccess: $isSuccess, popularDataList: $popularDataList, searchedDataList: $searchedDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality()
                .equals(other.popularDataList, popularDataList) &&
            const DeepCollectionEquality()
                .equals(other.searchedDataList, searchedDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(popularDataList),
      const DeepCollectionEquality().hash(searchedDataList));

  @JsonKey(ignore: true)
  @override
  _$$_SearchResultStateCopyWith<_$_SearchResultState> get copyWith =>
      __$$_SearchResultStateCopyWithImpl<_$_SearchResultState>(
          this, _$identity);
}

abstract class _SearchResultState implements SearchResultState {
  const factory _SearchResultState(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isSuccess,
      required final MovieList popularDataList,
      required final MovieList searchedDataList}) = _$_SearchResultState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isSuccess;
  @override
  MovieList get popularDataList;
  @override
  MovieList get searchedDataList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultStateCopyWith<_$_SearchResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
