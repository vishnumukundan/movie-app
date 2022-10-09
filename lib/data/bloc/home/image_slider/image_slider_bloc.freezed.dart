// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_slider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageSliderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getImageSliderData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getImageSliderData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getImageSliderData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetImageSliderData value) getImageSliderData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetImageSliderData value)? getImageSliderData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetImageSliderData value)? getImageSliderData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSliderEventCopyWith<$Res> {
  factory $ImageSliderEventCopyWith(
          ImageSliderEvent value, $Res Function(ImageSliderEvent) then) =
      _$ImageSliderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageSliderEventCopyWithImpl<$Res>
    implements $ImageSliderEventCopyWith<$Res> {
  _$ImageSliderEventCopyWithImpl(this._value, this._then);

  final ImageSliderEvent _value;
  // ignore: unused_field
  final $Res Function(ImageSliderEvent) _then;
}

/// @nodoc
abstract class _$$_GetImageSliderDataCopyWith<$Res> {
  factory _$$_GetImageSliderDataCopyWith(_$_GetImageSliderData value,
          $Res Function(_$_GetImageSliderData) then) =
      __$$_GetImageSliderDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetImageSliderDataCopyWithImpl<$Res>
    extends _$ImageSliderEventCopyWithImpl<$Res>
    implements _$$_GetImageSliderDataCopyWith<$Res> {
  __$$_GetImageSliderDataCopyWithImpl(
      _$_GetImageSliderData _value, $Res Function(_$_GetImageSliderData) _then)
      : super(_value, (v) => _then(v as _$_GetImageSliderData));

  @override
  _$_GetImageSliderData get _value => super._value as _$_GetImageSliderData;
}

/// @nodoc

class _$_GetImageSliderData implements _GetImageSliderData {
  const _$_GetImageSliderData();

  @override
  String toString() {
    return 'ImageSliderEvent.getImageSliderData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetImageSliderData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getImageSliderData,
  }) {
    return getImageSliderData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getImageSliderData,
  }) {
    return getImageSliderData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getImageSliderData,
    required TResult orElse(),
  }) {
    if (getImageSliderData != null) {
      return getImageSliderData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetImageSliderData value) getImageSliderData,
  }) {
    return getImageSliderData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetImageSliderData value)? getImageSliderData,
  }) {
    return getImageSliderData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetImageSliderData value)? getImageSliderData,
    required TResult orElse(),
  }) {
    if (getImageSliderData != null) {
      return getImageSliderData(this);
    }
    return orElse();
  }
}

abstract class _GetImageSliderData implements ImageSliderEvent {
  const factory _GetImageSliderData() = _$_GetImageSliderData;
}

/// @nodoc
mixin _$ImageSliderState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<ImageSlider> get imageSliderDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageSliderStateCopyWith<ImageSliderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSliderStateCopyWith<$Res> {
  factory $ImageSliderStateCopyWith(
          ImageSliderState value, $Res Function(ImageSliderState) then) =
      _$ImageSliderStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, bool isError, List<ImageSlider> imageSliderDataList});
}

/// @nodoc
class _$ImageSliderStateCopyWithImpl<$Res>
    implements $ImageSliderStateCopyWith<$Res> {
  _$ImageSliderStateCopyWithImpl(this._value, this._then);

  final ImageSliderState _value;
  // ignore: unused_field
  final $Res Function(ImageSliderState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? imageSliderDataList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSliderDataList: imageSliderDataList == freezed
          ? _value.imageSliderDataList
          : imageSliderDataList // ignore: cast_nullable_to_non_nullable
              as List<ImageSlider>,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageSliderStateCopyWith<$Res>
    implements $ImageSliderStateCopyWith<$Res> {
  factory _$$_ImageSliderStateCopyWith(
          _$_ImageSliderState value, $Res Function(_$_ImageSliderState) then) =
      __$$_ImageSliderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, bool isError, List<ImageSlider> imageSliderDataList});
}

/// @nodoc
class __$$_ImageSliderStateCopyWithImpl<$Res>
    extends _$ImageSliderStateCopyWithImpl<$Res>
    implements _$$_ImageSliderStateCopyWith<$Res> {
  __$$_ImageSliderStateCopyWithImpl(
      _$_ImageSliderState _value, $Res Function(_$_ImageSliderState) _then)
      : super(_value, (v) => _then(v as _$_ImageSliderState));

  @override
  _$_ImageSliderState get _value => super._value as _$_ImageSliderState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? imageSliderDataList = freezed,
  }) {
    return _then(_$_ImageSliderState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSliderDataList: imageSliderDataList == freezed
          ? _value._imageSliderDataList
          : imageSliderDataList // ignore: cast_nullable_to_non_nullable
              as List<ImageSlider>,
    ));
  }
}

/// @nodoc

class _$_ImageSliderState implements _ImageSliderState {
  const _$_ImageSliderState(
      {required this.isLoading,
      required this.isError,
      required final List<ImageSlider> imageSliderDataList})
      : _imageSliderDataList = imageSliderDataList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<ImageSlider> _imageSliderDataList;
  @override
  List<ImageSlider> get imageSliderDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageSliderDataList);
  }

  @override
  String toString() {
    return 'ImageSliderState(isLoading: $isLoading, isError: $isError, imageSliderDataList: $imageSliderDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageSliderState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other._imageSliderDataList, _imageSliderDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(_imageSliderDataList));

  @JsonKey(ignore: true)
  @override
  _$$_ImageSliderStateCopyWith<_$_ImageSliderState> get copyWith =>
      __$$_ImageSliderStateCopyWithImpl<_$_ImageSliderState>(this, _$identity);
}

abstract class _ImageSliderState implements ImageSliderState {
  const factory _ImageSliderState(
          {required final bool isLoading,
          required final bool isError,
          required final List<ImageSlider> imageSliderDataList}) =
      _$_ImageSliderState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<ImageSlider> get imageSliderDataList;
  @override
  @JsonKey(ignore: true)
  _$$_ImageSliderStateCopyWith<_$_ImageSliderState> get copyWith =>
      throw _privateConstructorUsedError;
}
