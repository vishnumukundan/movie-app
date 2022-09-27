import 'package:dartz/dartz.dart';
import 'package:movie_app/data/models/login/login_poster_model.dart';

import '../../../core/errors/network_error/network_error.dart';

abstract class ILoginImagesRepo {
  Future<Either<NetworkError, List<LoginPoster>>> getLoginPosterImages();
}
