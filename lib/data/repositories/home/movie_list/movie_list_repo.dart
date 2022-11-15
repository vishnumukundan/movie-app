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
  Future<Either<NetworkError, MovieList>> getMovieListByPerson({
    required String personId,
  }) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.personMovies(personId));

      // log(jsonEncode(response.data).toString());

      final dataList = MovieList.fromJson(response.data);

      // log(jsonEncode(dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }

  Future<Either<NetworkError, MovieList>> getMoviesByQuery({
    required String query,
  }) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.moviesByGenre(query, Language.malayalam));

      // log(jsonEncode(response.data).toString());

      final dataList = MovieList.fromJson(response.data);

      // log(jsonEncode(dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }
}
