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
    required TResult Function() userTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserTapped value) userTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserTapped value)? userTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserTapped value)? userTapped,
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
abstract class _$$_UserTappedCopyWith<$Res> {
  factory _$$_UserTappedCopyWith(
          _$_UserTapped value, $Res Function(_$_UserTapped) then) =
      __$$_UserTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserTappedCopyWithImpl<$Res> extends _$AppbarEventCopyWithImpl<$Res>
    implements _$$_UserTappedCopyWith<$Res> {
  __$$_UserTappedCopyWithImpl(
      _$_UserTapped _value, $Res Function(_$_UserTapped) _then)
      : super(_value, (v) => _then(v as _$_UserTapped));

  @override
  _$_UserTapped get _value => super._value as _$_UserTapped;
}

/// @nodoc

class _$_UserTapped implements _UserTapped {
  const _$_UserTapped();

  @override
  String toString() {
    return 'AppbarEvent.userTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userTapped,
  }) {
    return userTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userTapped,
  }) {
    return userTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userTapped,
    required TResult orElse(),
  }) {
    if (userTapped != null) {
      return userTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserTapped value) userTapped,
  }) {
    return userTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserTapped value)? userTapped,
  }) {
    return userTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserTapped value)? userTapped,
    required TResult orElse(),
  }) {
    if (userTapped != null) {
      return userTapped(this);
    }
    return orElse();
  }
}

abstract class _UserTapped implements AppbarEvent {
  const factory _UserTapped() = _$_UserTapped;
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
