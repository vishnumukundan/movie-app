import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/home/image_slider/image_slider_model.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/home/image_slider/i_image_slider_repo.dart';

@LazySingleton(as: IImageSliderRepo)
class ImageSliderRepository implements IImageSliderRepo {
  @override
  Future<Either<NetworkError, List<ImageSlider>>> getImageSliderData() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingMovieToday);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final imageSliderData = (response.data["results"] as List)
            .map((e) => ImageSlider.fromJson(e))
            .toList();
        return Right(imageSliderData);
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (_) {
      return const Left(NetworkError.clientError());
    }
  }
}
