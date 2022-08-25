import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_slider_state.dart';
part 'image_slider_cubit.freezed.dart';

class ImageSliderCubit extends Cubit<ImageSliderState> {
  ImageSliderCubit() : super(const ImageSliderState.initial(currentIndex: 0));

  void setIndex(index) => emit(ImageSliderState.initial(currentIndex: index));
}
