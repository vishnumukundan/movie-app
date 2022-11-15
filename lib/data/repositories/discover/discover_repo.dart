import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/dicover/i_discover_repo.dart';

@LazySingleton(as: IDiscoverRepo)
class DiscoverRepository implements IDiscoverRepo {
  @override
  Future<Either<NetworkError, List<Genre>>> getMovieGenres() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.movieGenres);

      final dataList = (response.data["genres"] as List)
          .map((e) => Genre.fromJson(e))
          .toList();

      // log(json.encode(dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Cast>>> getPopularPersons() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.popularPersons);

      final dataList = (response.data["results"] as List)
          .map((e) => Cast.fromJson(e))
          .toList();

      // log(json.encode(dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }
}
