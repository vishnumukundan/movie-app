import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/home/movie_sroll_list/i_movie_list_repo.dart';

@LazySingleton(as: IMovieListRepo)
class MovieScrollListRepository implements IMovieListRepo {
  @override
  Future<Either<NetworkError, MovieList>> getMovieList({int? personId}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.personMovies(personId));

      // log(jsonEncode(response.data).toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = MovieList.fromJson(response.data);

        // log(jsonEncode(dataList).toString());
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
