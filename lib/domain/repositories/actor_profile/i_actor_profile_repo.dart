import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/actor_profile/actor_profile_model.dart';

abstract class IPersonDetailsRepo {
  Future<Either<NetworkError, PersonDetails>> getPersonDetails({
    required String personId,
  });
}
