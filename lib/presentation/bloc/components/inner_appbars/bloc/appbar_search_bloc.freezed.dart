// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appbar_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppbarSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTextFieldFocused) userTappedTextField,
    required TResult Function(int columnIconIndex) columnButtonPress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTextFieldFocused)? userTappedTextField,
    TResult Function(int columnIconIndex)? columnButtonPress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTextFieldFocused)? userTappedTextField,
    TResult Function(int columnIconIndex)? columnButtonPress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserTappedTextField value) userTappedTextField,
    required TResult Function(_ColumnButtonPress value) columnButtonPress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserTappedTextField value)? userTappedTextField,
    TResult Function(_ColumnButtonPress value)? columnButtonPress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserTappedTextField value)? userTappedTextField,
    TResult Function(_ColumnButtonPress value)? columnButtonPress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarSearchEventCopyWith<$Res> {
  factory $AppbarSearchEventCopyWith(
          AppbarSearchEvent value, $Res Function(AppbarSearchEvent) then) =
      _$AppbarSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppbarSearchEventCopyWithImpl<$Res>
    implements $AppbarSearchEventCopyWith<$Res> {
  _$AppbarSearchEventCopyWithImpl(this._value, this._then);

  final AppbarSearchEvent _value;
  // ignore: unused_field
  final $Res Function(AppbarSearchEvent) _then;
}

/// @nodoc
abstract class _$$_UserTappedTextFieldCopyWith<$Res> {
  factory _$$_UserTappedTextFieldCopyWith(_$_UserTappedTextField value,
          $Res Function(_$_UserTappedTextField) then) =
      __$$_UserTappedTextFieldCopyWithImpl<$Res>;
  $Res call({bool isTextFieldFocused});
}

/// @nodoc
class __$$_UserTappedTextFieldCopyWithImpl<$Res>
    extends _$AppbarSearchEventCopyWithImpl<$Res>
    implements _$$_UserTappedTextFieldCopyWith<$Res> {
  __$$_UserTappedTextFieldCopyWithImpl(_$_UserTappedTextField _value,
      $Res Function(_$_UserTappedTextField) _then)
      : super(_value, (v) => _then(v as _$_UserTappedTextField));

  @override
  _$_UserTappedTextField get _value => super._value as _$_UserTappedTextField;

  @override
  $Res call({
    Object? isTextFieldFocused = freezed,
  }) {
    return _then(_$_UserTappedTextField(
      isTextFieldFocused: isTextFieldFocused == freezed
          ? _value.isTextFieldFocused
          : isTextFieldFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserTappedTextField implements _UserTappedTextField {
  const _$_UserTappedTextField({required this.isTextFieldFocused});

  @override
  final bool isTextFieldFocused;

  @override
  String toString() {
    return 'AppbarSearchEvent.userTappedTextField(isTextFieldFocused: $isTextFieldFocused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserTappedTextField &&
            const DeepCollectionEquality()
                .equals(other.isTextFieldFocused, isTextFieldFocused));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isTextFieldFocused));

  @JsonKey(ignore: true)
  @override
  _$$_UserTappedTextFieldCopyWith<_$_UserTappedTextField> get copyWith =>
      __$$_UserTappedTextFieldCopyWithImpl<_$_UserTappedTextField>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTextFieldFocused) userTappedTextField,
    required TResult Function(int columnIconIndex) columnButtonPress,
  }) {
    return userTappedTextField(isTextFieldFocused);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTextFieldFocused)? userTappedTextField,
    TResult Function(int columnIconIndex)? columnButtonPress,
  }) {
    return userTappedTextField?.call(isTextFieldFocused);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTextFieldFocused)? userTappedTextField,
    TResult Function(int columnIconIndex)? columnButtonPress,
    required TResult orElse(),
  }) {
    if (userTappedTextField != null) {
      return userTappedTextField(isTextFieldFocused);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserTappedTextField value) userTappedTextField,
    required TResult Function(_ColumnButtonPress value) columnButtonPress,
  }) {
    return userTappedTextField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserTappedTextField value)? userTappedTextField,
    TResult Function(_ColumnButtonPress value)? columnButtonPress,
  }) {
    return userTappedTextField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserTappedTextField value)? userTappedTextField,
    TResult Function(_ColumnButtonPress value)? columnButtonPress,
    required TResult orElse(),
  }) {
    if (userTappedTextField != null) {
      return userTappedTextField(this);
    }
    return orElse();
  }
}

abstract class _UserTappedTextField implements AppbarSearchEvent {
  const factory _UserTappedTextField({required final bool isTextFieldFocused}) =
      _$_UserTappedTextField;

  bool get isTextFieldFocused;
  @JsonKey(ignore: true)
  _$$_UserTappedTextFieldCopyWith<_$_UserTappedTextField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColumnButtonPressCopyWith<$Res> {
  factory _$$_ColumnButtonPressCopyWith(_$_ColumnButtonPress value,
          $Res Function(_$_ColumnButtonPress) then) =
      __$$_ColumnButtonPressCopyWithImpl<$Res>;
  $Res call({int columnIconIndex});
}

/// @nodoc
class __$$_ColumnButtonPressCopyWithImpl<$Res>
    extends _$AppbarSearchEventCopyWithImpl<$Res>
    implements _$$_ColumnButtonPressCopyWith<$Res> {
  __$$_ColumnButtonPressCopyWithImpl(
      _$_ColumnButtonPress _value, $Res Function(_$_ColumnButtonPress) _then)
      : super(_value, (v) => _then(v as _$_ColumnButtonPress));

  @override
  _$_ColumnButtonPress get _value => super._value as _$_ColumnButtonPress;

  @override
  $Res call({
    Object? columnIconIndex = freezed,
  }) {
    return _then(_$_ColumnButtonPress(
      columnIconIndex: columnIconIndex == freezed
          ? _value.columnIconIndex
          : columnIconIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ColumnButtonPress implements _ColumnButtonPress {
  const _$_ColumnButtonPress({required this.columnIconIndex});

  @override
  final int columnIconIndex;

  @override
  String toString() {
    return 'AppbarSearchEvent.columnButtonPress(columnIconIndex: $columnIconIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColumnButtonPress &&
            const DeepCollectionEquality()
                .equals(other.columnIconIndex, columnIconIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(columnIconIndex));

  @JsonKey(ignore: true)
  @override
  _$$_ColumnButtonPressCopyWith<_$_ColumnButtonPress> get copyWith =>
      __$$_ColumnButtonPressCopyWithImpl<_$_ColumnButtonPress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTextFieldFocused) userTappedTextField,
    required TResult Function(int columnIconIndex) columnButtonPress,
  }) {
    return columnButtonPress(columnIconIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTextFieldFocused)? userTappedTextField,
    TResult Function(int columnIconIndex)? columnButtonPress,
  }) {
    return columnButtonPress?.call(columnIconIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTextFieldFocused)? userTappedTextField,
    TResult Function(int columnIconIndex)? columnButtonPress,
    required TResult orElse(),
  }) {
    if (columnButtonPress != null) {
      return columnButtonPress(columnIconIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserTappedTextField value) userTappedTextField,
    required TResult Function(_ColumnButtonPress value) columnButtonPress,
  }) {
    return columnButtonPress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserTappedTextField value)? userTappedTextField,
    TResult Function(_ColumnButtonPress value)? columnButtonPress,
  }) {
    return columnButtonPress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserTappedTextField value)? userTappedTextField,
    TResult Function(_ColumnButtonPress value)? columnButtonPress,
    required TResult orElse(),
  }) {
    if (columnButtonPress != null) {
      return columnButtonPress(this);
    }
    return orElse();
  }
}

abstract class _ColumnButtonPress implements AppbarSearchEvent {
  const factory _ColumnButtonPress({required final int columnIconIndex}) =
      _$_ColumnButtonPress;

  int get columnIconIndex;
  @JsonKey(ignore: true)
  _$$_ColumnButtonPressCopyWith<_$_ColumnButtonPress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppbarSearchState {
  int get columnIconIndex => throw _privateConstructorUsedError;
  bool get isTextFieldFocused => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppbarSearchStateCopyWith<AppbarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarSearchStateCopyWith<$Res> {
  factory $AppbarSearchStateCopyWith(
          AppbarSearchState value, $Res Function(AppbarSearchState) then) =
      _$AppbarSearchStateCopyWithImpl<$Res>;
  $Res call({int columnIconIndex, bool isTextFieldFocused});
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
    Object? columnIconIndex = freezed,
    Object? isTextFieldFocused = freezed,
  }) {
    return _then(_value.copyWith(
      columnIconIndex: columnIconIndex == freezed
          ? _value.columnIconIndex
          : columnIconIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isTextFieldFocused: isTextFieldFocused == freezed
          ? _value.isTextFieldFocused
          : isTextFieldFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AppbarSearchStateCopyWith<$Res>
    implements $AppbarSearchStateCopyWith<$Res> {
  factory _$$_AppbarSearchStateCopyWith(_$_AppbarSearchState value,
          $Res Function(_$_AppbarSearchState) then) =
      __$$_AppbarSearchStateCopyWithImpl<$Res>;
  @override
  $Res call({int columnIconIndex, bool isTextFieldFocused});
}

/// @nodoc
class __$$_AppbarSearchStateCopyWithImpl<$Res>
    extends _$AppbarSearchStateCopyWithImpl<$Res>
    implements _$$_AppbarSearchStateCopyWith<$Res> {
  __$$_AppbarSearchStateCopyWithImpl(
      _$_AppbarSearchState _value, $Res Function(_$_AppbarSearchState) _then)
      : super(_value, (v) => _then(v as _$_AppbarSearchState));

  @override
  _$_AppbarSearchState get _value => super._value as _$_AppbarSearchState;

  @override
  $Res call({
    Object? columnIconIndex = freezed,
    Object? isTextFieldFocused = freezed,
  }) {
    return _then(_$_AppbarSearchState(
      columnIconIndex: columnIconIndex == freezed
          ? _value.columnIconIndex
          : columnIconIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isTextFieldFocused: isTextFieldFocused == freezed
          ? _value.isTextFieldFocused
          : isTextFieldFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppbarSearchState implements _AppbarSearchState {
  const _$_AppbarSearchState(
      {required this.columnIconIndex, required this.isTextFieldFocused});

  @override
  final int columnIconIndex;
  @override
  final bool isTextFieldFocused;

  @override
  String toString() {
    return 'AppbarSearchState(columnIconIndex: $columnIconIndex, isTextFieldFocused: $isTextFieldFocused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppbarSearchState &&
            const DeepCollectionEquality()
                .equals(other.columnIconIndex, columnIconIndex) &&
            const DeepCollectionEquality()
                .equals(other.isTextFieldFocused, isTextFieldFocused));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(columnIconIndex),
      const DeepCollectionEquality().hash(isTextFieldFocused));

  @JsonKey(ignore: true)
  @override
  _$$_AppbarSearchStateCopyWith<_$_AppbarSearchState> get copyWith =>
      __$$_AppbarSearchStateCopyWithImpl<_$_AppbarSearchState>(
          this, _$identity);
}

abstract class _AppbarSearchState implements AppbarSearchState {
  const factory _AppbarSearchState(
      {required final int columnIconIndex,
      required final bool isTextFieldFocused}) = _$_AppbarSearchState;

  @override
  int get columnIconIndex;
  @override
  bool get isTextFieldFocused;
  @override
  @JsonKey(ignore: true)
  _$$_AppbarSearchStateCopyWith<_$_AppbarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
