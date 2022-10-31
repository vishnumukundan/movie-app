import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';

abstract class IMovieListRepo {
  Future<Either<NetworkError, MovieList>> getMovieListByPerson({
    required String personId,
  });
}
