import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';

abstract class IHomeRepo {
  Future<Either<NetworkError, List<Result>>> getPopularMovies();
  Future<Either<NetworkError, List<Result>>> getTrendingMovies({
    required String dayOrWeek,
  });
  // Future<Either<NetworkError, List<Result>>> getLatestTrailers();
  Future<Either<NetworkError, List<Result>>> getTopTamilMovies();
  Future<Either<NetworkError, List<Result>>> getTopHindiMovies();
  Future<Either<NetworkError, List<Result>>> getTopMalayalamMovies();
}
