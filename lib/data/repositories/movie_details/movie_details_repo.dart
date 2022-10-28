import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/movie_details/i_movie_details_repo.dart';

@LazySingleton(as: IMovieDetailsRepo)
class MovieDetailsRepository implements IMovieDetailsRepo {
  @override
  Future<Either<NetworkError, MovieDetails>> getMovieDetails({
    required String movieId,
  }) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.movieDetils(movieId));

      // log(jsonEncode(response.data).toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = MovieDetails.fromJson(response.data);

        // log(jsonEncode(dataList.casts!.cast).toString());
        return Right(dataList);
      } else {
        log(const Left(NetworkError.serverError()).toString());
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }
}
