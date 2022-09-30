// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_poster_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginPosterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLoginPosterImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getLoginPosterImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLoginPosterImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLoginPosterImages value) getLoginPosterImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLoginPosterImages value)? getLoginPosterImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLoginPosterImages value)? getLoginPosterImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPosterEventCopyWith<$Res> {
  factory $LoginPosterEventCopyWith(
          LoginPosterEvent value, $Res Function(LoginPosterEvent) then) =
      _$LoginPosterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPosterEventCopyWithImpl<$Res>
    implements $LoginPosterEventCopyWith<$Res> {
  _$LoginPosterEventCopyWithImpl(this._value, this._then);

  final LoginPosterEvent _value;
  // ignore: unused_field
  final $Res Function(LoginPosterEvent) _then;
}

/// @nodoc
abstract class _$$_GetLoginPosterImagesCopyWith<$Res> {
  factory _$$_GetLoginPosterImagesCopyWith(_$_GetLoginPosterImages value,
          $Res Function(_$_GetLoginPosterImages) then) =
      __$$_GetLoginPosterImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetLoginPosterImagesCopyWithImpl<$Res>
    extends _$LoginPosterEventCopyWithImpl<$Res>
    implements _$$_GetLoginPosterImagesCopyWith<$Res> {
  __$$_GetLoginPosterImagesCopyWithImpl(_$_GetLoginPosterImages _value,
      $Res Function(_$_GetLoginPosterImages) _then)
      : super(_value, (v) => _then(v as _$_GetLoginPosterImages));

  @override
  _$_GetLoginPosterImages get _value => super._value as _$_GetLoginPosterImages;
}

/// @nodoc

class _$_GetLoginPosterImages implements _GetLoginPosterImages {
  const _$_GetLoginPosterImages();

  @override
  String toString() {
    return 'LoginPosterEvent.getLoginPosterImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetLoginPosterImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLoginPosterImages,
  }) {
    return getLoginPosterImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getLoginPosterImages,
  }) {
    return getLoginPosterImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLoginPosterImages,
    required TResult orElse(),
  }) {
    if (getLoginPosterImages != null) {
      return getLoginPosterImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLoginPosterImages value) getLoginPosterImages,
  }) {
    return getLoginPosterImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLoginPosterImages value)? getLoginPosterImages,
  }) {
    return getLoginPosterImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLoginPosterImages value)? getLoginPosterImages,
    required TResult orElse(),
  }) {
    if (getLoginPosterImages != null) {
      return getLoginPosterImages(this);
    }
    return orElse();
  }
}

abstract class _GetLoginPosterImages implements LoginPosterEvent {
  const factory _GetLoginPosterImages() = _$_GetLoginPosterImages;
}

/// @nodoc
mixin _$LoginPosterState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<LoginPoster> get loginPosterDataList =>
      throw _privateConstructorUsedError;
  Option<Either<NetworkError, List<LoginPoster>>>
      get loginPosterFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginPosterStateCopyWith<LoginPosterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPosterStateCopyWith<$Res> {
  factory $LoginPosterStateCopyWith(
          LoginPosterState value, $Res Function(LoginPosterState) then) =
      _$LoginPosterStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<LoginPoster> loginPosterDataList,
      Option<Either<NetworkError, List<LoginPoster>>>
          loginPosterFailureOrSuccessOption});
}

/// @nodoc
class _$LoginPosterStateCopyWithImpl<$Res>
    implements $LoginPosterStateCopyWith<$Res> {
  _$LoginPosterStateCopyWithImpl(this._value, this._then);

  final LoginPosterState _value;
  // ignore: unused_field
  final $Res Function(LoginPosterState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? loginPosterDataList = freezed,
    Object? loginPosterFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginPosterDataList: loginPosterDataList == freezed
          ? _value.loginPosterDataList
          : loginPosterDataList // ignore: cast_nullable_to_non_nullable
              as List<LoginPoster>,
      loginPosterFailureOrSuccessOption: loginPosterFailureOrSuccessOption ==
              freezed
          ? _value.loginPosterFailureOrSuccessOption
          : loginPosterFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkError, List<LoginPoster>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginPosterStateCopyWith<$Res>
    implements $LoginPosterStateCopyWith<$Res> {
  factory _$$_LoginPosterStateCopyWith(
          _$_LoginPosterState value, $Res Function(_$_LoginPosterState) then) =
      __$$_LoginPosterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<LoginPoster> loginPosterDataList,
      Option<Either<NetworkError, List<LoginPoster>>>
          loginPosterFailureOrSuccessOption});
}

/// @nodoc
class __$$_LoginPosterStateCopyWithImpl<$Res>
    extends _$LoginPosterStateCopyWithImpl<$Res>
    implements _$$_LoginPosterStateCopyWith<$Res> {
  __$$_LoginPosterStateCopyWithImpl(
      _$_LoginPosterState _value, $Res Function(_$_LoginPosterState) _then)
      : super(_value, (v) => _then(v as _$_LoginPosterState));

  @override
  _$_LoginPosterState get _value => super._value as _$_LoginPosterState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? loginPosterDataList = freezed,
    Object? loginPosterFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_LoginPosterState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginPosterDataList: loginPosterDataList == freezed
          ? _value._loginPosterDataList
          : loginPosterDataList // ignore: cast_nullable_to_non_nullable
              as List<LoginPoster>,
      loginPosterFailureOrSuccessOption: loginPosterFailureOrSuccessOption ==
              freezed
          ? _value.loginPosterFailureOrSuccessOption
          : loginPosterFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkError, List<LoginPoster>>>,
    ));
  }
}

/// @nodoc

class _$_LoginPosterState implements _LoginPosterState {
  const _$_LoginPosterState(
      {required this.isLoading,
      required final List<LoginPoster> loginPosterDataList,
      required this.loginPosterFailureOrSuccessOption})
      : _loginPosterDataList = loginPosterDataList;

  @override
  final bool isLoading;
  final List<LoginPoster> _loginPosterDataList;
  @override
  List<LoginPoster> get loginPosterDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loginPosterDataList);
  }

  @override
  final Option<Either<NetworkError, List<LoginPoster>>>
      loginPosterFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginPosterState(isLoading: $isLoading, loginPosterDataList: $loginPosterDataList, loginPosterFailureOrSuccessOption: $loginPosterFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginPosterState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._loginPosterDataList, _loginPosterDataList) &&
            const DeepCollectionEquality().equals(
                other.loginPosterFailureOrSuccessOption,
                loginPosterFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_loginPosterDataList),
      const DeepCollectionEquality().hash(loginPosterFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_LoginPosterStateCopyWith<_$_LoginPosterState> get copyWith =>
      __$$_LoginPosterStateCopyWithImpl<_$_LoginPosterState>(this, _$identity);
}

abstract class _LoginPosterState implements LoginPosterState {
  const factory _LoginPosterState(
      {required final bool isLoading,
      required final List<LoginPoster> loginPosterDataList,
      required final Option<Either<NetworkError, List<LoginPoster>>>
          loginPosterFailureOrSuccessOption}) = _$_LoginPosterState;

  @override
  bool get isLoading;
  @override
  List<LoginPoster> get loginPosterDataList;
  @override
  Option<Either<NetworkError, List<LoginPoster>>>
      get loginPosterFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_LoginPosterStateCopyWith<_$_LoginPosterState> get copyWith =>
      throw _privateConstructorUsedError;
}
