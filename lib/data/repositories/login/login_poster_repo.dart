import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/login/login_poster_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/login/i_login_poster_repo.dart';

import '../../../core/errors/network_error/network_error.dart';

@LazySingleton(as: ILoginImagesRepo)
class LoginPosterRepository implements ILoginImagesRepo {
  @override
  Future<Either<NetworkError, List<LoginPoster>>> getLoginPosterImages() async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.trendingMovies(TrendigMovies.allDay));

      final loginPostersList = (response.data["results"] as List)
          .map((e) => LoginPoster.fromJson(e))
          .toList();
      loginPostersList.sort(((a, b) => a.popularity!.compareTo(b.popularity!)));

      // log(loginPostersList.reversed.toList().toString());
      return Right(loginPostersList.reversed.toList());
    } catch (e) {
      // log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }
}
