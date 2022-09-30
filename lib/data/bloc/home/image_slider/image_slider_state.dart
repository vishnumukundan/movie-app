part of 'image_slider_bloc.dart';

@freezed
class ImageSliderState with _$ImageSliderState {
  const factory ImageSliderState({
    required bool isLoading,
    required List<ImageSlider> imageSliderDataList,
    required Option<Either<NetworkError, List<ImageSlider>>>
        imageSliderFailureOrSuccessOption,
  }) = _ImageSliderState;

  factory ImageSliderState.initial() {
    return const ImageSliderState(
      isLoading: true,
      imageSliderDataList: [],
      imageSliderFailureOrSuccessOption: None(),
    );
  }
}
