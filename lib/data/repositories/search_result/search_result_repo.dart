import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/search_result/i_search_result_repo.dart';

@LazySingleton(as: ISearchResultRepo)
class MovieDetailsRepository implements ISearchResultRepo {
  @override
  Future<Either<NetworkError, MovieList>> getPopularMovies() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.popularMovies);

      // log(jsonEncode(response.data).toString());

      final dataList = MovieList.fromJson(response.data);

      // log(jsonEncode(dataList.results).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkError, MovieList>> getSearchedMovies(
      {required String query}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.searchMovie(query));

      // log(jsonEncode(response.data).toString());

      final dataList = MovieList.fromJson(response.data);

      // log(jsonEncode(dataList.results).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }
}
