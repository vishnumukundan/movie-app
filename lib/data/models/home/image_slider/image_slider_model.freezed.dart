// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_slider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageSlider _$ImageSliderFromJson(Map<String, dynamic> json) {
  return _ImageSlider.fromJson(json);
}

/// @nodoc
mixin _$ImageSlider {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageSliderCopyWith<ImageSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSliderCopyWith<$Res> {
  factory $ImageSliderCopyWith(
          ImageSlider value, $Res Function(ImageSlider) then) =
      _$ImageSliderCopyWithImpl<$Res>;
  $Res call(
      {int id, @JsonKey(name: 'poster_path') String posterPath, String title});
}

/// @nodoc
class _$ImageSliderCopyWithImpl<$Res> implements $ImageSliderCopyWith<$Res> {
  _$ImageSliderCopyWithImpl(this._value, this._then);

  final ImageSlider _value;
  // ignore: unused_field
  final $Res Function(ImageSlider) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageSliderCopyWith<$Res>
    implements $ImageSliderCopyWith<$Res> {
  factory _$$_ImageSliderCopyWith(
          _$_ImageSlider value, $Res Function(_$_ImageSlider) then) =
      __$$_ImageSliderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, @JsonKey(name: 'poster_path') String posterPath, String title});
}

/// @nodoc
class __$$_ImageSliderCopyWithImpl<$Res> extends _$ImageSliderCopyWithImpl<$Res>
    implements _$$_ImageSliderCopyWith<$Res> {
  __$$_ImageSliderCopyWithImpl(
      _$_ImageSlider _value, $Res Function(_$_ImageSlider) _then)
      : super(_value, (v) => _then(v as _$_ImageSlider));

  @override
  _$_ImageSlider get _value => super._value as _$_ImageSlider;

  @override
  $Res call({
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_ImageSlider(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageSlider implements _ImageSlider {
  const _$_ImageSlider(
      {required this.id,
      @JsonKey(name: 'poster_path') required this.posterPath,
      required this.title});

  factory _$_ImageSlider.fromJson(Map<String, dynamic> json) =>
      _$$_ImageSliderFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  final String title;

  @override
  String toString() {
    return 'ImageSlider(id: $id, posterPath: $posterPath, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageSlider &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_ImageSliderCopyWith<_$_ImageSlider> get copyWith =>
      __$$_ImageSliderCopyWithImpl<_$_ImageSlider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageSliderToJson(
      this,
    );
  }
}

abstract class _ImageSlider implements ImageSlider {
  const factory _ImageSlider(
      {required final int id,
      @JsonKey(name: 'poster_path') required final String posterPath,
      required final String title}) = _$_ImageSlider;

  factory _ImageSlider.fromJson(Map<String, dynamic> json) =
      _$_ImageSlider.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_ImageSliderCopyWith<_$_ImageSlider> get copyWith =>
      throw _privateConstructorUsedError;
}
