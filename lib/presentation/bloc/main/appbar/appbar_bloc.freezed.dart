// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppbarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moviesSelected,
    required TResult Function() tvShowsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? moviesSelected,
    TResult Function()? tvShowsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moviesSelected,
    TResult Function()? tvShowsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesSelected value) moviesSelected,
    required TResult Function(_TvShowsSelected value) tvShowsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesSelected value)? moviesSelected,
    TResult Function(_TvShowsSelected value)? tvShowsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesSelected value)? moviesSelected,
    TResult Function(_TvShowsSelected value)? tvShowsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarEventCopyWith<$Res> {
  factory $AppbarEventCopyWith(
          AppbarEvent value, $Res Function(AppbarEvent) then) =
      _$AppbarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppbarEventCopyWithImpl<$Res> implements $AppbarEventCopyWith<$Res> {
  _$AppbarEventCopyWithImpl(this._value, this._then);

  final AppbarEvent _value;
  // ignore: unused_field
  final $Res Function(AppbarEvent) _then;
}

/// @nodoc
abstract class _$$_MoviesSelectedCopyWith<$Res> {
  factory _$$_MoviesSelectedCopyWith(
          _$_MoviesSelected value, $Res Function(_$_MoviesSelected) then) =
      __$$_MoviesSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MoviesSelectedCopyWithImpl<$Res>
    extends _$AppbarEventCopyWithImpl<$Res>
    implements _$$_MoviesSelectedCopyWith<$Res> {
  __$$_MoviesSelectedCopyWithImpl(
      _$_MoviesSelected _value, $Res Function(_$_MoviesSelected) _then)
      : super(_value, (v) => _then(v as _$_MoviesSelected));

  @override
  _$_MoviesSelected get _value => super._value as _$_MoviesSelected;
}

/// @nodoc

class _$_MoviesSelected implements _MoviesSelected {
  const _$_MoviesSelected();

  @override
  String toString() {
    return 'AppbarEvent.moviesSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MoviesSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moviesSelected,
    required TResult Function() tvShowsSelected,
  }) {
    return moviesSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? moviesSelected,
    TResult Function()? tvShowsSelected,
  }) {
    return moviesSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moviesSelected,
    TResult Function()? tvShowsSelected,
    required TResult orElse(),
  }) {
    if (moviesSelected != null) {
      return moviesSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesSelected value) moviesSelected,
    required TResult Function(_TvShowsSelected value) tvShowsSelected,
  }) {
    return moviesSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesSelected value)? moviesSelected,
    TResult Function(_TvShowsSelected value)? tvShowsSelected,
  }) {
    return moviesSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesSelected value)? moviesSelected,
    TResult Function(_TvShowsSelected value)? tvShowsSelected,
    required TResult orElse(),
  }) {
    if (moviesSelected != null) {
      return moviesSelected(this);
    }
    return orElse();
  }
}

abstract class _MoviesSelected implements AppbarEvent {
  const factory _MoviesSelected() = _$_MoviesSelected;
}

/// @nodoc
abstract class _$$_TvShowsSelectedCopyWith<$Res> {
  factory _$$_TvShowsSelectedCopyWith(
          _$_TvShowsSelected value, $Res Function(_$_TvShowsSelected) then) =
      __$$_TvShowsSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TvShowsSelectedCopyWithImpl<$Res>
    extends _$AppbarEventCopyWithImpl<$Res>
    implements _$$_TvShowsSelectedCopyWith<$Res> {
  __$$_TvShowsSelectedCopyWithImpl(
      _$_TvShowsSelected _value, $Res Function(_$_TvShowsSelected) _then)
      : super(_value, (v) => _then(v as _$_TvShowsSelected));

  @override
  _$_TvShowsSelected get _value => super._value as _$_TvShowsSelected;
}

/// @nodoc

class _$_TvShowsSelected implements _TvShowsSelected {
  const _$_TvShowsSelected();

  @override
  String toString() {
    return 'AppbarEvent.tvShowsSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TvShowsSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moviesSelected,
    required TResult Function() tvShowsSelected,
  }) {
    return tvShowsSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? moviesSelected,
    TResult Function()? tvShowsSelected,
  }) {
    return tvShowsSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moviesSelected,
    TResult Function()? tvShowsSelected,
    required TResult orElse(),
  }) {
    if (tvShowsSelected != null) {
      return tvShowsSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesSelected value) moviesSelected,
    required TResult Function(_TvShowsSelected value) tvShowsSelected,
  }) {
    return tvShowsSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesSelected value)? moviesSelected,
    TResult Function(_TvShowsSelected value)? tvShowsSelected,
  }) {
    return tvShowsSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesSelected value)? moviesSelected,
    TResult Function(_TvShowsSelected value)? tvShowsSelected,
    required TResult orElse(),
  }) {
    if (tvShowsSelected != null) {
      return tvShowsSelected(this);
    }
    return orElse();
  }
}

abstract class _TvShowsSelected implements AppbarEvent {
  const factory _TvShowsSelected() = _$_TvShowsSelected;
}

/// @nodoc
mixin _$AppbarState {
  HomePageCurrentPage get currentPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomePageCurrentPage currentPage) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HomePageCurrentPage currentPage)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomePageCurrentPage currentPage)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppbarStateCopyWith<AppbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarStateCopyWith<$Res> {
  factory $AppbarStateCopyWith(
          AppbarState value, $Res Function(AppbarState) then) =
      _$AppbarStateCopyWithImpl<$Res>;
  $Res call({HomePageCurrentPage currentPage});
}

/// @nodoc
class _$AppbarStateCopyWithImpl<$Res> implements $AppbarStateCopyWith<$Res> {
  _$AppbarStateCopyWithImpl(this._value, this._then);

  final AppbarState _value;
  // ignore: unused_field
  final $Res Function(AppbarState) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as HomePageCurrentPage,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AppbarStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({HomePageCurrentPage currentPage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AppbarStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? currentPage = freezed,
  }) {
    return _then(_$_Initial(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as HomePageCurrentPage,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.currentPage});

  @override
  final HomePageCurrentPage currentPage;

  @override
  String toString() {
    return 'AppbarState.initial(currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomePageCurrentPage currentPage) initial,
  }) {
    return initial(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HomePageCurrentPage currentPage)? initial,
  }) {
    return initial?.call(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomePageCurrentPage currentPage)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppbarState {
  const factory _Initial({required final HomePageCurrentPage currentPage}) =
      _$_Initial;

  @override
  HomePageCurrentPage get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
