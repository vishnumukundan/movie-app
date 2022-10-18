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

Map<String, dynamic> _$$_LoginPosterToJson(_$_LoginPoster instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('popularity', instance.popularity);
  writeNotNull('poster_path', instance.posterPath);
  return val;
}
