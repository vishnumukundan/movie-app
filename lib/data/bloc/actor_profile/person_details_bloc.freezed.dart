// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonDetailsEvent {
  int get personId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int personId) getPersonDetails,
    required TResult Function(int personId) getMovieList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int personId)? getPersonDetails,
    TResult Function(int personId)? getMovieList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int personId)? getPersonDetails,
    TResult Function(int personId)? getMovieList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPersonDetails value) getPersonDetails,
    required TResult Function(GetMovieList value) getMovieList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPersonDetails value)? getPersonDetails,
    TResult Function(GetMovieList value)? getMovieList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPersonDetails value)? getPersonDetails,
    TResult Function(GetMovieList value)? getMovieList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonDetailsEventCopyWith<PersonDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailsEventCopyWith<$Res> {
  factory $PersonDetailsEventCopyWith(
          PersonDetailsEvent value, $Res Function(PersonDetailsEvent) then) =
      _$PersonDetailsEventCopyWithImpl<$Res>;
  $Res call({int personId});
}

/// @nodoc
class _$PersonDetailsEventCopyWithImpl<$Res>
    implements $PersonDetailsEventCopyWith<$Res> {
  _$PersonDetailsEventCopyWithImpl(this._value, this._then);

  final PersonDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(PersonDetailsEvent) _then;

  @override
  $Res call({
    Object? personId = freezed,
  }) {
    return _then(_value.copyWith(
      personId: personId == freezed
          ? _value.personId
          : personId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$GetPersonDetailsCopyWith<$Res>
    implements $PersonDetailsEventCopyWith<$Res> {
  factory _$$GetPersonDetailsCopyWith(
          _$GetPersonDetails value, $Res Function(_$GetPersonDetails) then) =
      __$$GetPersonDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int personId});
}

/// @nodoc
class __$$GetPersonDetailsCopyWithImpl<$Res>
    extends _$PersonDetailsEventCopyWithImpl<$Res>
    implements _$$GetPersonDetailsCopyWith<$Res> {
  __$$GetPersonDetailsCopyWithImpl(
      _$GetPersonDetails _value, $Res Function(_$GetPersonDetails) _then)
      : super(_value, (v) => _then(v as _$GetPersonDetails));

  @override
  _$GetPersonDetails get _value => super._value as _$GetPersonDetails;

  @override
  $Res call({
    Object? personId = freezed,
  }) {
    return _then(_$GetPersonDetails(
      personId: personId == freezed
          ? _value.personId
          : personId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPersonDetails implements GetPersonDetails {
  const _$GetPersonDetails({required this.personId});

  @override
  final int personId;

  @override
  String toString() {
    return 'PersonDetailsEvent.getPersonDetails(personId: $personId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPersonDetails &&
            const DeepCollectionEquality().equals(other.personId, personId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(personId));

  @JsonKey(ignore: true)
  @override
  _$$GetPersonDetailsCopyWith<_$GetPersonDetails> get copyWith =>
      __$$GetPersonDetailsCopyWithImpl<_$GetPersonDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int personId) getPersonDetails,
    required TResult Function(int personId) getMovieList,
  }) {
    return getPersonDetails(personId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int personId)? getPersonDetails,
    TResult Function(int personId)? getMovieList,
  }) {
    return getPersonDetails?.call(personId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int personId)? getPersonDetails,
    TResult Function(int personId)? getMovieList,
    required TResult orElse(),
  }) {
    if (getPersonDetails != null) {
      return getPersonDetails(personId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPersonDetails value) getPersonDetails,
    required TResult Function(GetMovieList value) getMovieList,
  }) {
    return getPersonDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPersonDetails value)? getPersonDetails,
    TResult Function(GetMovieList value)? getMovieList,
  }) {
    return getPersonDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPersonDetails value)? getPersonDetails,
    TResult Function(GetMovieList value)? getMovieList,
    required TResult orElse(),
  }) {
    if (getPersonDetails != null) {
      return getPersonDetails(this);
    }
    return orElse();
  }
}

abstract class GetPersonDetails implements PersonDetailsEvent {
  const factory GetPersonDetails({required final int personId}) =
      _$GetPersonDetails;

  @override
  int get personId;
  @override
  @JsonKey(ignore: true)
  _$$GetPersonDetailsCopyWith<_$GetPersonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieListCopyWith<$Res>
    implements $PersonDetailsEventCopyWith<$Res> {
  factory _$$GetMovieListCopyWith(
          _$GetMovieList value, $Res Function(_$GetMovieList) then) =
      __$$GetMovieListCopyWithImpl<$Res>;
  @override
  $Res call({int personId});
}

/// @nodoc
class __$$GetMovieListCopyWithImpl<$Res>
    extends _$PersonDetailsEventCopyWithImpl<$Res>
    implements _$$GetMovieListCopyWith<$Res> {
  __$$GetMovieListCopyWithImpl(
      _$GetMovieList _value, $Res Function(_$GetMovieList) _then)
      : super(_value, (v) => _then(v as _$GetMovieList));

  @override
  _$GetMovieList get _value => super._value as _$GetMovieList;

  @override
  $Res call({
    Object? personId = freezed,
  }) {
    return _then(_$GetMovieList(
      personId: personId == freezed
          ? _value.personId
          : personId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMovieList implements GetMovieList {
  const _$GetMovieList({required this.personId});

  @override
  final int personId;

  @override
  String toString() {
    return 'PersonDetailsEvent.getMovieList(personId: $personId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieList &&
            const DeepCollectionEquality().equals(other.personId, personId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(personId));

  @JsonKey(ignore: true)
  @override
  _$$GetMovieListCopyWith<_$GetMovieList> get copyWith =>
      __$$GetMovieListCopyWithImpl<_$GetMovieList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int personId) getPersonDetails,
    required TResult Function(int personId) getMovieList,
  }) {
    return getMovieList(personId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int personId)? getPersonDetails,
    TResult Function(int personId)? getMovieList,
  }) {
    return getMovieList?.call(personId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int personId)? getPersonDetails,
    TResult Function(int personId)? getMovieList,
    required TResult orElse(),
  }) {
    if (getMovieList != null) {
      return getMovieList(personId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPersonDetails value) getPersonDetails,
    required TResult Function(GetMovieList value) getMovieList,
  }) {
    return getMovieList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPersonDetails value)? getPersonDetails,
    TResult Function(GetMovieList value)? getMovieList,
  }) {
    return getMovieList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPersonDetails value)? getPersonDetails,
    TResult Function(GetMovieList value)? getMovieList,
    required TResult orElse(),
  }) {
    if (getMovieList != null) {
      return getMovieList(this);
    }
    return orElse();
  }
}

abstract class GetMovieList implements PersonDetailsEvent {
  const factory GetMovieList({required final int personId}) = _$GetMovieList;

  @override
  int get personId;
  @override
  @JsonKey(ignore: true)
  _$$GetMovieListCopyWith<_$GetMovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  PersonDetails? get personData => throw _privateConstructorUsedError;
  MovieList? get movieDataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonDetailsStateCopyWith<PersonDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailsStateCopyWith<$Res> {
  factory $PersonDetailsStateCopyWith(
          PersonDetailsState value, $Res Function(PersonDetailsState) then) =
      _$PersonDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool success,
      PersonDetails? personData,
      MovieList? movieDataList});

  $PersonDetailsCopyWith<$Res>? get personData;
  $MovieListCopyWith<$Res>? get movieDataList;
}

/// @nodoc
class _$PersonDetailsStateCopyWithImpl<$Res>
    implements $PersonDetailsStateCopyWith<$Res> {
  _$PersonDetailsStateCopyWithImpl(this._value, this._then);

  final PersonDetailsState _value;
  // ignore: unused_field
  final $Res Function(PersonDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? success = freezed,
    Object? personData = freezed,
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
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      personData: personData == freezed
          ? _value.personData
          : personData // ignore: cast_nullable_to_non_nullable
              as PersonDetails?,
      movieDataList: movieDataList == freezed
          ? _value.movieDataList
          : movieDataList // ignore: cast_nullable_to_non_nullable
              as MovieList?,
    ));
  }

  @override
  $PersonDetailsCopyWith<$Res>? get personData {
    if (_value.personData == null) {
      return null;
    }

    return $PersonDetailsCopyWith<$Res>(_value.personData!, (value) {
      return _then(_value.copyWith(personData: value));
    });
  }

  @override
  $MovieListCopyWith<$Res>? get movieDataList {
    if (_value.movieDataList == null) {
      return null;
    }

    return $MovieListCopyWith<$Res>(_value.movieDataList!, (value) {
      return _then(_value.copyWith(movieDataList: value));
    });
  }
}

/// @nodoc
abstract class _$$_PersonDetailsStateCopyWith<$Res>
    implements $PersonDetailsStateCopyWith<$Res> {
  factory _$$_PersonDetailsStateCopyWith(_$_PersonDetailsState value,
          $Res Function(_$_PersonDetailsState) then) =
      __$$_PersonDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool success,
      PersonDetails? personData,
      MovieList? movieDataList});

  @override
  $PersonDetailsCopyWith<$Res>? get personData;
  @override
  $MovieListCopyWith<$Res>? get movieDataList;
}

/// @nodoc
class __$$_PersonDetailsStateCopyWithImpl<$Res>
    extends _$PersonDetailsStateCopyWithImpl<$Res>
    implements _$$_PersonDetailsStateCopyWith<$Res> {
  __$$_PersonDetailsStateCopyWithImpl(
      _$_PersonDetailsState _value, $Res Function(_$_PersonDetailsState) _then)
      : super(_value, (v) => _then(v as _$_PersonDetailsState));

  @override
  _$_PersonDetailsState get _value => super._value as _$_PersonDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? success = freezed,
    Object? personData = freezed,
    Object? movieDataList = freezed,
  }) {
    return _then(_$_PersonDetailsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      personData: personData == freezed
          ? _value.personData
          : personData // ignore: cast_nullable_to_non_nullable
              as PersonDetails?,
      movieDataList: movieDataList == freezed
          ? _value.movieDataList
          : movieDataList // ignore: cast_nullable_to_non_nullable
              as MovieList?,
    ));
  }
}

/// @nodoc

class _$_PersonDetailsState implements _PersonDetailsState {
  const _$_PersonDetailsState(
      {required this.isLoading,
      required this.hasError,
      required this.success,
      this.personData,
      this.movieDataList});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool success;
  @override
  final PersonDetails? personData;
  @override
  final MovieList? movieDataList;

  @override
  String toString() {
    return 'PersonDetailsState(isLoading: $isLoading, hasError: $hasError, success: $success, personData: $personData, movieDataList: $movieDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.personData, personData) &&
            const DeepCollectionEquality()
                .equals(other.movieDataList, movieDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(personData),
      const DeepCollectionEquality().hash(movieDataList));

  @JsonKey(ignore: true)
  @override
  _$$_PersonDetailsStateCopyWith<_$_PersonDetailsState> get copyWith =>
      __$$_PersonDetailsStateCopyWithImpl<_$_PersonDetailsState>(
          this, _$identity);
}

abstract class _PersonDetailsState implements PersonDetailsState {
  const factory _PersonDetailsState(
      {required final bool isLoading,
      required final bool hasError,
      required final bool success,
      final PersonDetails? personData,
      final MovieList? movieDataList}) = _$_PersonDetailsState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get success;
  @override
  PersonDetails? get personData;
  @override
  MovieList? get movieDataList;
  @override
  @JsonKey(ignore: true)
  _$$_PersonDetailsStateCopyWith<_$_PersonDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
