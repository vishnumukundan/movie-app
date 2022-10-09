part of 'image_slider_bloc.dart';

@freezed
class ImageSliderState with _$ImageSliderState {
  const factory ImageSliderState({
    required bool isLoading,
    required bool isError,
    required List<ImageSlider> imageSliderDataList,
  }) = _ImageSliderState;

  factory ImageSliderState.initial() {
    return const ImageSliderState(
      isLoading: true,
      isError: false,
      imageSliderDataList: [],
    );
  }
}
