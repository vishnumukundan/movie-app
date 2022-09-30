// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_slider_model.freezed.dart';
part 'image_slider_model.g.dart';

@freezed
class ImageSlider with _$ImageSlider {
  const factory ImageSlider({
    required int id,
    @JsonKey(name: 'poster_path') required String posterPath,
    required String title,
  }) = _ImageSlider;

  factory ImageSlider.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderFromJson(json);
}
