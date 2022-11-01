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

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = PersonDetails.fromJson(response.data);

        // log(jsonEncode(dataList).toString());
        return Right(dataList);
      } else {
        log(const Left(NetworkError.serverError()).toString());
        return const Left(NetworkError.serverError());
      }
    } catch (e) {
      log(e.toString());
      return const Left(NetworkError.clientError());
    }
  }
}
