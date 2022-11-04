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
  Future<Either<NetworkError, List<Result>>> getPopularMovies() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.popularMovies);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = (response.data['results'] as List)
            .map((e) => Result.fromJson(e))
            .toList();
        // log((dataList).toString());
        return Right(dataList);
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTopHindiMovies() async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.topBestMovies(Language.hindi));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = (response.data['results'] as List)
            .map((e) => Result.fromJson(e))
            .toList();
        // log((dataList).toString());
        return Right(dataList);
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTopMalayalamMovies() async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.topBestMovies(Language.malayalam));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = (response.data['results'] as List)
            .map((e) => Result.fromJson(e))
            .toList();
        // log((dataList).toString());
        return Right(dataList);
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTopTamilMovies() async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.topBestMovies(Language.tamil));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = (response.data['results'] as List)
            .map((e) => Result.fromJson(e))
            .toList();
        // log((dataList).toString());
        return Right(dataList);
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }

  @override
  Future<Either<NetworkError, List<Result>>> getTrendingMovies({
    required String dayOrWeek,
  }) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingMovies(dayOrWeek));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = (response.data['results'] as List)
            .map((e) => Result.fromJson(e))
            .toList();
        // log((dataList).toString());
        return Right(dataList);
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }
}
