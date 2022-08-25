part of 'image_slider_cubit.dart';

@freezed
class ImageSliderState with _$ImageSliderState {
  const factory ImageSliderState.initial({
    required int currentIndex,
  }) = _Initial;
}
