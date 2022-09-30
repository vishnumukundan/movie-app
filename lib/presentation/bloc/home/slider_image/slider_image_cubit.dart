import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_image_state.dart';
part 'slider_image_cubit.freezed.dart';

class SliderImageCubit extends Cubit<SliderImageState> {
  SliderImageCubit() : super(const SliderImageState.initial(currentIndex: 0));
  void setIndex(index) => emit(SliderImageState.initial(currentIndex: index));
}
