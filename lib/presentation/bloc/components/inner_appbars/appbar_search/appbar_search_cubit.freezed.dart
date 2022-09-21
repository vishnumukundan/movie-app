// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appbar_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppbarSearchState {
  bool get focusEnabled => throw _privateConstructorUsedError;
  int get iconIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool focusEnabled, int iconIndex) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool focusEnabled, int iconIndex)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool focusEnabled, int iconIndex)? initial,
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
  $AppbarSearchStateCopyWith<AppbarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarSearchStateCopyWith<$Res> {
  factory $AppbarSearchStateCopyWith(
          AppbarSearchState value, $Res Function(AppbarSearchState) then) =
      _$AppbarSearchStateCopyWithImpl<$Res>;
  $Res call({bool focusEnabled, int iconIndex});
}

/// @nodoc
class _$AppbarSearchStateCopyWithImpl<$Res>
    implements $AppbarSearchStateCopyWith<$Res> {
  _$AppbarSearchStateCopyWithImpl(this._value, this._then);

  final AppbarSearchState _value;
  // ignore: unused_field
  final $Res Function(AppbarSearchState) _then;

  @override
  $Res call({
    Object? focusEnabled = freezed,
    Object? iconIndex = freezed,
  }) {
    return _then(_value.copyWith(
      focusEnabled: focusEnabled == freezed
          ? _value.focusEnabled
          : focusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      iconIndex: iconIndex == freezed
          ? _value.iconIndex
          : iconIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AppbarSearchStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool focusEnabled, int iconIndex});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AppbarSearchStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? focusEnabled = freezed,
    Object? iconIndex = freezed,
  }) {
    return _then(_$_Initial(
      focusEnabled: focusEnabled == freezed
          ? _value.focusEnabled
          : focusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      iconIndex: iconIndex == freezed
          ? _value.iconIndex
          : iconIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.focusEnabled = false, this.iconIndex = 0});

  @override
  @JsonKey()
  final bool focusEnabled;
  @override
  @JsonKey()
  final int iconIndex;

  @override
  String toString() {
    return 'AppbarSearchState.initial(focusEnabled: $focusEnabled, iconIndex: $iconIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.focusEnabled, focusEnabled) &&
            const DeepCollectionEquality().equals(other.iconIndex, iconIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(focusEnabled),
      const DeepCollectionEquality().hash(iconIndex));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool focusEnabled, int iconIndex) initial,
  }) {
    return initial(focusEnabled, iconIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool focusEnabled, int iconIndex)? initial,
  }) {
    return initial?.call(focusEnabled, iconIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool focusEnabled, int iconIndex)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(focusEnabled, iconIndex);
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

abstract class _Initial implements AppbarSearchState {
  const factory _Initial({final bool focusEnabled, final int iconIndex}) =
      _$_Initial;

  @override
  bool get focusEnabled;
  @override
  int get iconIndex;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
