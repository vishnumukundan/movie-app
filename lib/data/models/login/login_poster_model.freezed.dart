// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_poster_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginPoster _$LoginPosterFromJson(Map<String, dynamic> json) {
  return _LoginPoster.fromJson(json);
}

/// @nodoc
mixin _$LoginPoster {
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPosterCopyWith<LoginPoster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPosterCopyWith<$Res> {
  factory $LoginPosterCopyWith(
          LoginPoster value, $Res Function(LoginPoster) then) =
      _$LoginPosterCopyWithImpl<$Res>;
  $Res call(
      {double? popularity, @JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$LoginPosterCopyWithImpl<$Res> implements $LoginPosterCopyWith<$Res> {
  _$LoginPosterCopyWithImpl(this._value, this._then);

  final LoginPoster _value;
  // ignore: unused_field
  final $Res Function(LoginPoster) _then;

  @override
  $Res call({
    Object? popularity = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginPosterCopyWith<$Res>
    implements $LoginPosterCopyWith<$Res> {
  factory _$$_LoginPosterCopyWith(
          _$_LoginPoster value, $Res Function(_$_LoginPoster) then) =
      __$$_LoginPosterCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? popularity, @JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_LoginPosterCopyWithImpl<$Res> extends _$LoginPosterCopyWithImpl<$Res>
    implements _$$_LoginPosterCopyWith<$Res> {
  __$$_LoginPosterCopyWithImpl(
      _$_LoginPoster _value, $Res Function(_$_LoginPoster) _then)
      : super(_value, (v) => _then(v as _$_LoginPoster));

  @override
  _$_LoginPoster get _value => super._value as _$_LoginPoster;

  @override
  $Res call({
    Object? popularity = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_$_LoginPoster(
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginPoster implements _LoginPoster {
  const _$_LoginPoster(
      {required this.popularity,
      @JsonKey(name: "poster_path") required this.posterPath});

  factory _$_LoginPoster.fromJson(Map<String, dynamic> json) =>
      _$$_LoginPosterFromJson(json);

  @override
  final double? popularity;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'LoginPoster(popularity: $popularity, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginPoster &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_LoginPosterCopyWith<_$_LoginPoster> get copyWith =>
      __$$_LoginPosterCopyWithImpl<_$_LoginPoster>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginPosterToJson(
      this,
    );
  }
}

abstract class _LoginPoster implements LoginPoster {
  const factory _LoginPoster(
          {required final double? popularity,
          @JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_LoginPoster;

  factory _LoginPoster.fromJson(Map<String, dynamic> json) =
      _$_LoginPoster.fromJson;

  @override
  double? get popularity;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_LoginPosterCopyWith<_$_LoginPoster> get copyWith =>
      throw _privateConstructorUsedError;
}
