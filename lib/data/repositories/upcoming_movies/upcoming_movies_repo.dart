import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/upcoming_movies/upcoming_movies_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/upcoming_movies/i_upcoming_movies_repo.dart';

import '../../../core/errors/network_error/network_error.dart';

@LazySingleton(as: IUpcomingMoviesRepo)
class UpcomingMoviesRepository implements IUpcomingMoviesRepo {
  @override
  Future<Either<NetworkError, List<UpcomingMovies>>> getUpcomingMovies({
    required String date,
  }) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.upcomingMovies(date, Language.malayalam));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = (response.data["results"] as List)
            .map((e) => UpcomingMovies.fromJson(e))
            .toList();
        dataList.sort(((a, b) => a.releaseDate!.compareTo(b.releaseDate!)));

        // log(json.encode(dataList).toString());
        return Right(dataList);
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      // log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }
}
