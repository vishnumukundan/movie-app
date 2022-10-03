import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
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
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingMovieAllWeek);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final loginPostersList = (response.data["results"] as List)
            .map((e) => LoginPoster.fromJson(e))
            .toList();
        loginPostersList
            .sort(((a, b) => a.popularity!.compareTo(b.popularity!)));

        return Right(loginPostersList.reversed.toList());
      } else {
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      // log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }
}
