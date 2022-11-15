import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/home/i_home_repo.dart';

@LazySingleton(as: IHomeRepo)
class HomeRepository implements IHomeRepo {
  @override
  Future<Either<NetworkError, List<Result>>> getTopRatedMovies() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.topRatedMovies);

      final dataList = (response.data['results'] as List)
          .map((e) => Result.fromJson(e))
          .toList();
      // log((dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTopHindiMovies() async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.topBestMovies(Language.hindi));

      final dataList = (response.data['results'] as List)
          .map((e) => Result.fromJson(e))
          .toList();
      // log((dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTopMalayalamMovies() async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.topBestMovies(Language.malayalam));

      final dataList = (response.data['results'] as List)
          .map((e) => Result.fromJson(e))
          .toList();
      // log((dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTopTamilMovies() async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.topBestMovies(Language.tamil));

      final dataList = (response.data['results'] as List)
          .map((e) => Result.fromJson(e))
          .toList();
      // log((dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTrendingMovies({
    required String dayOrWeek,
  }) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingMovies(dayOrWeek));

      final dataList = (response.data['results'] as List)
          .map((e) => Result.fromJson(e))
          .toList();
      // log((dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }
}
