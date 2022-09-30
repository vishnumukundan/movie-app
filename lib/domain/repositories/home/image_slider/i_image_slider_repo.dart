import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/image_slider/image_slider_model.dart';

abstract class IImageSliderRepo {
  Future<Either<NetworkError, List<ImageSlider>>> getImageSliderData();
}
