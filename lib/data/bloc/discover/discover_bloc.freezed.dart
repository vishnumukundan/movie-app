// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discover_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovieGenres,
    required TResult Function() getPopularPersons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMovieGenres,
    TResult Function()? getPopularPersons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovieGenres,
    TResult Function()? getPopularPersons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieGenres value) getMovieGenres,
    required TResult Function(GetPopularPersons value) getPopularPersons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieGenres value)? getMovieGenres,
    TResult Function(GetPopularPersons value)? getPopularPersons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieGenres value)? getMovieGenres,
    TResult Function(GetPopularPersons value)? getPopularPersons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverEventCopyWith<$Res> {
  factory $DiscoverEventCopyWith(
          DiscoverEvent value, $Res Function(DiscoverEvent) then) =
      _$DiscoverEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DiscoverEventCopyWithImpl<$Res>
    implements $DiscoverEventCopyWith<$Res> {
  _$DiscoverEventCopyWithImpl(this._value, this._then);

  final DiscoverEvent _value;
  // ignore: unused_field
  final $Res Function(DiscoverEvent) _then;
}

/// @nodoc
abstract class _$$GetMovieGenresCopyWith<$Res> {
  factory _$$GetMovieGenresCopyWith(
          _$GetMovieGenres value, $Res Function(_$GetMovieGenres) then) =
      __$$GetMovieGenresCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMovieGenresCopyWithImpl<$Res>
    extends _$DiscoverEventCopyWithImpl<$Res>
    implements _$$GetMovieGenresCopyWith<$Res> {
  __$$GetMovieGenresCopyWithImpl(
      _$GetMovieGenres _value, $Res Function(_$GetMovieGenres) _then)
      : super(_value, (v) => _then(v as _$GetMovieGenres));

  @override
  _$GetMovieGenres get _value => super._value as _$GetMovieGenres;
}

/// @nodoc

class _$GetMovieGenres implements GetMovieGenres {
  const _$GetMovieGenres();

  @override
  String toString() {
    return 'DiscoverEvent.getMovieGenres()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMovieGenres);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovieGenres,
    required TResult Function() getPopularPersons,
  }) {
    return getMovieGenres();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMovieGenres,
    TResult Function()? getPopularPersons,
  }) {
    return getMovieGenres?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovieGenres,
    TResult Function()? getPopularPersons,
    required TResult orElse(),
  }) {
    if (getMovieGenres != null) {
      return getMovieGenres();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieGenres value) getMovieGenres,
    required TResult Function(GetPopularPersons value) getPopularPersons,
  }) {
    return getMovieGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieGenres value)? getMovieGenres,
    TResult Function(GetPopularPersons value)? getPopularPersons,
  }) {
    return getMovieGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieGenres value)? getMovieGenres,
    TResult Function(GetPopularPersons value)? getPopularPersons,
    required TResult orElse(),
  }) {
    if (getMovieGenres != null) {
      return getMovieGenres(this);
    }
    return orElse();
  }
}

abstract class GetMovieGenres implements DiscoverEvent {
  const factory GetMovieGenres() = _$GetMovieGenres;
}

/// @nodoc
abstract class _$$GetPopularPersonsCopyWith<$Res> {
  factory _$$GetPopularPersonsCopyWith(
          _$GetPopularPersons value, $Res Function(_$GetPopularPersons) then) =
      __$$GetPopularPersonsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPopularPersonsCopyWithImpl<$Res>
    extends _$DiscoverEventCopyWithImpl<$Res>
    implements _$$GetPopularPersonsCopyWith<$Res> {
  __$$GetPopularPersonsCopyWithImpl(
      _$GetPopularPersons _value, $Res Function(_$GetPopularPersons) _then)
      : super(_value, (v) => _then(v as _$GetPopularPersons));

  @override
  _$GetPopularPersons get _value => super._value as _$GetPopularPersons;
}

/// @nodoc

class _$GetPopularPersons implements GetPopularPersons {
  const _$GetPopularPersons();

  @override
  String toString() {
    return 'DiscoverEvent.getPopularPersons()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPopularPersons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovieGenres,
    required TResult Function() getPopularPersons,
  }) {
    return getPopularPersons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMovieGenres,
    TResult Function()? getPopularPersons,
  }) {
    return getPopularPersons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovieGenres,
    TResult Function()? getPopularPersons,
    required TResult orElse(),
  }) {
    if (getPopularPersons != null) {
      return getPopularPersons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieGenres value) getMovieGenres,
    required TResult Function(GetPopularPersons value) getPopularPersons,
  }) {
    return getPopularPersons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieGenres value)? getMovieGenres,
    TResult Function(GetPopularPersons value)? getPopularPersons,
  }) {
    return getPopularPersons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieGenres value)? getMovieGenres,
    TResult Function(GetPopularPersons value)? getPopularPersons,
    required TResult orElse(),
  }) {
    if (getPopularPersons != null) {
      return getPopularPersons(this);
    }
    return orElse();
  }
}

abstract class GetPopularPersons implements DiscoverEvent {
  const factory GetPopularPersons() = _$GetPopularPersons;
}

/// @nodoc
mixin _$DiscoverState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  List<Genre> get genresDataList => throw _privateConstructorUsedError;
  List<Cast> get personDataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isSuccess,
      List<Genre> genresDataList,
      List<Cast> personDataList});
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  final DiscoverState _value;
  // ignore: unused_field
  final $Res Function(DiscoverState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSuccess = freezed,
    Object? genresDataList = freezed,
    Object? personDataList = freezed,
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
      genresDataList: genresDataList == freezed
          ? _value.genresDataList
          : genresDataList // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      personDataList: personDataList == freezed
          ? _value.personDataList
          : personDataList // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc
abstract class _$$_DiscoverStateCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$_DiscoverStateCopyWith(
          _$_DiscoverState value, $Res Function(_$_DiscoverState) then) =
      __$$_DiscoverStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isSuccess,
      List<Genre> genresDataList,
      List<Cast> personDataList});
}

/// @nodoc
class __$$_DiscoverStateCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res>
    implements _$$_DiscoverStateCopyWith<$Res> {
  __$$_DiscoverStateCopyWithImpl(
      _$_DiscoverState _value, $Res Function(_$_DiscoverState) _then)
      : super(_value, (v) => _then(v as _$_DiscoverState));

  @override
  _$_DiscoverState get _value => super._value as _$_DiscoverState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSuccess = freezed,
    Object? genresDataList = freezed,
    Object? personDataList = freezed,
  }) {
    return _then(_$_DiscoverState(
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
      genresDataList: genresDataList == freezed
          ? _value._genresDataList
          : genresDataList // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      personDataList: personDataList == freezed
          ? _value._personDataList
          : personDataList // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc

class _$_DiscoverState implements _DiscoverState {
  const _$_DiscoverState(
      {required this.isLoading,
      required this.hasError,
      required this.isSuccess,
      required final List<Genre> genresDataList,
      required final List<Cast> personDataList})
      : _genresDataList = genresDataList,
        _personDataList = personDataList;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isSuccess;
  final List<Genre> _genresDataList;
  @override
  List<Genre> get genresDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genresDataList);
  }

  final List<Cast> _personDataList;
  @override
  List<Cast> get personDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personDataList);
  }

  @override
  String toString() {
    return 'DiscoverState(isLoading: $isLoading, hasError: $hasError, isSuccess: $isSuccess, genresDataList: $genresDataList, personDataList: $personDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality()
                .equals(other._genresDataList, _genresDataList) &&
            const DeepCollectionEquality()
                .equals(other._personDataList, _personDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(_genresDataList),
      const DeepCollectionEquality().hash(_personDataList));

  @JsonKey(ignore: true)
  @override
  _$$_DiscoverStateCopyWith<_$_DiscoverState> get copyWith =>
      __$$_DiscoverStateCopyWithImpl<_$_DiscoverState>(this, _$identity);
}

abstract class _DiscoverState implements DiscoverState {
  const factory _DiscoverState(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isSuccess,
      required final List<Genre> genresDataList,
      required final List<Cast> personDataList}) = _$_DiscoverState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isSuccess;
  @override
  List<Genre> get genresDataList;
  @override
  List<Cast> get personDataList;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverStateCopyWith<_$_DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}
