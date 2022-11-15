// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/image_slider/image_slider_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/home/image_slider/i_image_slider_repo.dart';

@LazySingleton(as: IImageSliderRepo)
class ImageSliderRepository implements IImageSliderRepo {
  @override
  Future<Either<NetworkError, List<ImageSlider>>> getImageSliderData() async {
    //
    //
    // date
    final DateTime now = DateTime.now();

    // subtract 15 days
    final DateTime past_15_Days = now.subtract(const Duration(days: 15));

    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatedPastDate = formatter.format(past_15_Days);
    final String formattedTodayDate = formatter.format(now);

    try {
      // popular Malayalam movies by popularity
      final response = await Dio(BaseOptions()).get(
          ApiEndPoints.popularMoviesWithOriginalLanguage(
              Language.malayalam, formatedPastDate, formattedTodayDate));

      final imageSliderData = (response.data["results"] as List)
          .map((e) => ImageSlider.fromJson(e))
          .toList();
      return Right(imageSliderData);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }
}
