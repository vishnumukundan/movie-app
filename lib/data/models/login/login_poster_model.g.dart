// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_poster_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginPoster _$$_LoginPosterFromJson(Map<String, dynamic> json) =>
    _$_LoginPoster(
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_LoginPosterToJson(_$_LoginPoster instance) =>
    <String, dynamic>{
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
    };
