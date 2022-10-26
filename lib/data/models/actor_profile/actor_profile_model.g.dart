// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonDetails _$$_PersonDetailsFromJson(Map<String, dynamic> json) =>
    _$_PersonDetails(
      id: json['id'] as int,
      name: json['name'] as String?,
      birthday: json['birthday'] as String?,
      deathday: json['deathday'],
      gender: json['gender'] as int?,
      knownForDepartment: json['known_for_department'] as String?,
      biography: json['biography'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$_PersonDetailsToJson(_$_PersonDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday,
      'deathday': instance.deathday,
      'gender': instance.gender,
      'known_for_department': instance.knownForDepartment,
      'biography': instance.biography,
      'place_of_birth': instance.placeOfBirth,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
    };
