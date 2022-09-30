import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/home/image_slider/image_slider_model.dart';
import 'package:movie_app/domain/repositories/home/image_slider/i_image_slider_repo.dart';

import '../../../../core/errors/network_error/network_error.dart';

part 'image_slider_event.dart';
part 'image_slider_state.dart';
part 'image_slider_bloc.freezed.dart';

@injectable
class ImageSliderBloc extends Bloc<ImageSliderEvent, ImageSliderState> {
  final IImageSliderRepo _iImageSliderRepo;
  ImageSliderBloc(this._iImageSliderRepo) : super(ImageSliderState.initial()) {
    on<_GetImageSliderData>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        imageSliderDataList: [],
        imageSliderFailureOrSuccessOption: none(),
      ));

      final Either<NetworkError, List<ImageSlider>> imageSliderOption =
          await _iImageSliderRepo.getImageSliderData();

      emit(
        imageSliderOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            imageSliderFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            imageSliderDataList: success,
            imageSliderFailureOrSuccessOption: some(right(success)),
          ),
        ),
      );
    });
  }
}
