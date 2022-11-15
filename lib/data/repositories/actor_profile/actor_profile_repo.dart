import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/actor_profile/actor_profile_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/domain/repositories/actor_profile/i_actor_profile_repo.dart';

@LazySingleton(as: IActorProfileRepo)
class PersonDetailsRepository implements IActorProfileRepo {
  @override
  Future<Either<NetworkError, PersonDetails>> getPersonDetails({
    required String personId,
  }) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.personDetails(personId));

      // log(jsonEncode(response.data).toString());

      final dataList = PersonDetails.fromJson(response.data);

      // log(jsonEncode(dataList).toString());
      return Right(dataList);
    } catch (e) {
      log(e.toString());
      return Left(NetworkError.getDioException(e));
    }
  }
}
