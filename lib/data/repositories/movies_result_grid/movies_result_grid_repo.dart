import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/movies_result_grid/i_movies_result_grid_repo.dart';

@LazySingleton(as: IMoviesResultGridRepo)
class MoviesResultGridRepository implements IMoviesResultGridRepo {
  @override
  Future<Either<NetworkError, MovieList>> getMoviesByGenre(
      {required String genre}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.moviesByGenre(genre));

      log(ApiEndPoints.moviesByGenre(genre));

      // log(jsonEncode(response.data).toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = MovieList.fromJson(response.data);
        log(jsonEncode(dataList).toString());
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
