import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';

abstract class IDiscoverRepo {
  Future<Either<NetworkError, List<Genre>>> getMovieGenres();
  Future<Either<NetworkError, List<Cast>>> getPopularPersons();
}
