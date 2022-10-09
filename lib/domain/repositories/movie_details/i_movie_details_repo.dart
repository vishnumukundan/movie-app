import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';

abstract class IMovieDetailsRepo {
  Future<Either<NetworkError, MovieDetails>> getMovieDetails({
    required String movieId,
  });
}
