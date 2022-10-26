// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/home/image_slider/image_slider_model.dart';
import 'package:movie_app/domain/repositories/home/image_slider/i_image_slider_repo.dart';

import '../../../../core/errors/network_error/network_error.dart';

part 'image_slider_bloc.freezed.dart';
part 'image_slider_event.dart';
part 'image_slider_state.dart';

@injectable
class ImageSliderBloc extends Bloc<ImageSliderEvent, ImageSliderState> {
  final IImageSliderRepo _iImageSliderRepo;
  ImageSliderBloc(this._iImageSliderRepo) : super(ImageSliderState.initial()) {
    on<_GetImageSliderData>((event, emit) async {
      if (state.imageSliderDataList.isNotEmpty) {
        emit(ImageSliderState(
          isLoading: false,
          hasError: false,
          imageSliderDataList: state.imageSliderDataList,
        ));
      }

      final Either<NetworkError, List<ImageSlider>> imageSliderOption =
          await _iImageSliderRepo.getImageSliderData();

      final _state = imageSliderOption.fold(
          (failure) => const ImageSliderState(
                isLoading: false,
                hasError: true,
                imageSliderDataList: [],
              ),
          (success) => ImageSliderState(
                isLoading: false,
                hasError: false,
                imageSliderDataList: success,
              ));
      emit(_state);
    });
  }
}
