// To parse this JSON data, do
//
//     final personDetails = personDetailsFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_profile_model.freezed.dart';
part 'actor_profile_model.g.dart';

@freezed
abstract class PersonDetails with _$PersonDetails {
  const factory PersonDetails({
    required int id,
    String? name,
    String? birthday,
    dynamic deathday,
    int? gender,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    String? biography,
    @JsonKey(name: 'place_of_birth') String? placeOfBirth,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _PersonDetails;

  factory PersonDetails.fromJson(Map<String, dynamic> json) =>
      _$PersonDetailsFromJson(json);
}
