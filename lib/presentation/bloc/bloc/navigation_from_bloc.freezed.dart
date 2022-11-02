// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_from_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationFromEvent {
  NavigateFrom get navigateFrom => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigateFrom navigateFrom) setNavigationFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? setNavigationFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? setNavigationFrom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetNavigationFrom value) setNavigationFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetNavigationFrom value)? setNavigationFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetNavigationFrom value)? setNavigationFrom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationFromEventCopyWith<NavigationFromEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationFromEventCopyWith<$Res> {
  factory $NavigationFromEventCopyWith(
          NavigationFromEvent value, $Res Function(NavigationFromEvent) then) =
      _$NavigationFromEventCopyWithImpl<$Res>;
  $Res call({NavigateFrom navigateFrom});
}

/// @nodoc
class _$NavigationFromEventCopyWithImpl<$Res>
    implements $NavigationFromEventCopyWith<$Res> {
  _$NavigationFromEventCopyWithImpl(this._value, this._then);

  final NavigationFromEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationFromEvent) _then;

  @override
  $Res call({
    Object? navigateFrom = freezed,
  }) {
    return _then(_value.copyWith(
      navigateFrom: navigateFrom == freezed
          ? _value.navigateFrom
          : navigateFrom // ignore: cast_nullable_to_non_nullable
              as NavigateFrom,
    ));
  }
}

/// @nodoc
abstract class _$$_SetNavigationFromCopyWith<$Res>
    implements $NavigationFromEventCopyWith<$Res> {
  factory _$$_SetNavigationFromCopyWith(_$_SetNavigationFrom value,
          $Res Function(_$_SetNavigationFrom) then) =
      __$$_SetNavigationFromCopyWithImpl<$Res>;
  @override
  $Res call({NavigateFrom navigateFrom});
}

/// @nodoc
class __$$_SetNavigationFromCopyWithImpl<$Res>
    extends _$NavigationFromEventCopyWithImpl<$Res>
    implements _$$_SetNavigationFromCopyWith<$Res> {
  __$$_SetNavigationFromCopyWithImpl(
      _$_SetNavigationFrom _value, $Res Function(_$_SetNavigationFrom) _then)
      : super(_value, (v) => _then(v as _$_SetNavigationFrom));

  @override
  _$_SetNavigationFrom get _value => super._value as _$_SetNavigationFrom;

  @override
  $Res call({
    Object? navigateFrom = freezed,
  }) {
    return _then(_$_SetNavigationFrom(
      navigateFrom: navigateFrom == freezed
          ? _value.navigateFrom
          : navigateFrom // ignore: cast_nullable_to_non_nullable
              as NavigateFrom,
    ));
  }
}

/// @nodoc

class _$_SetNavigationFrom implements _SetNavigationFrom {
  const _$_SetNavigationFrom({required this.navigateFrom});

  @override
  final NavigateFrom navigateFrom;

  @override
  String toString() {
    return 'NavigationFromEvent.setNavigationFrom(navigateFrom: $navigateFrom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetNavigationFrom &&
            const DeepCollectionEquality()
                .equals(other.navigateFrom, navigateFrom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(navigateFrom));

  @JsonKey(ignore: true)
  @override
  _$$_SetNavigationFromCopyWith<_$_SetNavigationFrom> get copyWith =>
      __$$_SetNavigationFromCopyWithImpl<_$_SetNavigationFrom>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigateFrom navigateFrom) setNavigationFrom,
  }) {
    return setNavigationFrom(navigateFrom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? setNavigationFrom,
  }) {
    return setNavigationFrom?.call(navigateFrom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? setNavigationFrom,
    required TResult orElse(),
  }) {
    if (setNavigationFrom != null) {
      return setNavigationFrom(navigateFrom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetNavigationFrom value) setNavigationFrom,
  }) {
    return setNavigationFrom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetNavigationFrom value)? setNavigationFrom,
  }) {
    return setNavigationFrom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetNavigationFrom value)? setNavigationFrom,
    required TResult orElse(),
  }) {
    if (setNavigationFrom != null) {
      return setNavigationFrom(this);
    }
    return orElse();
  }
}

abstract class _SetNavigationFrom implements NavigationFromEvent {
  const factory _SetNavigationFrom({required final NavigateFrom navigateFrom}) =
      _$_SetNavigationFrom;

  @override
  NavigateFrom get navigateFrom;
  @override
  @JsonKey(ignore: true)
  _$$_SetNavigationFromCopyWith<_$_SetNavigationFrom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationFromState {
  NavigateFrom get navigateFrom => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigateFrom navigateFrom) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? initial,
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
  $NavigationFromStateCopyWith<NavigationFromState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationFromStateCopyWith<$Res> {
  factory $NavigationFromStateCopyWith(
          NavigationFromState value, $Res Function(NavigationFromState) then) =
      _$NavigationFromStateCopyWithImpl<$Res>;
  $Res call({NavigateFrom navigateFrom});
}

/// @nodoc
class _$NavigationFromStateCopyWithImpl<$Res>
    implements $NavigationFromStateCopyWith<$Res> {
  _$NavigationFromStateCopyWithImpl(this._value, this._then);

  final NavigationFromState _value;
  // ignore: unused_field
  final $Res Function(NavigationFromState) _then;

  @override
  $Res call({
    Object? navigateFrom = freezed,
  }) {
    return _then(_value.copyWith(
      navigateFrom: navigateFrom == freezed
          ? _value.navigateFrom
          : navigateFrom // ignore: cast_nullable_to_non_nullable
              as NavigateFrom,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $NavigationFromStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({NavigateFrom navigateFrom});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NavigationFromStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? navigateFrom = freezed,
  }) {
    return _then(_$_Initial(
      navigateFrom: navigateFrom == freezed
          ? _value.navigateFrom
          : navigateFrom // ignore: cast_nullable_to_non_nullable
              as NavigateFrom,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.navigateFrom});

  @override
  final NavigateFrom navigateFrom;

  @override
  String toString() {
    return 'NavigationFromState.initial(navigateFrom: $navigateFrom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.navigateFrom, navigateFrom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(navigateFrom));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigateFrom navigateFrom) initial,
  }) {
    return initial(navigateFrom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? initial,
  }) {
    return initial?.call(navigateFrom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigateFrom navigateFrom)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(navigateFrom);
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

abstract class _Initial implements NavigationFromState {
  const factory _Initial({required final NavigateFrom navigateFrom}) =
      _$_Initial;

  @override
  NavigateFrom get navigateFrom;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
