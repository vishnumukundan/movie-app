import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/upcoming_movies/upcoming_movies_model.dart';

abstract class IUpcomingMoviesRepo {
  Future<Either<NetworkError, List<UpcomingMovies>>> getUpcomingMovies();
}
