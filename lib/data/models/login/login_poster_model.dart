// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_poster_model.freezed.dart';
part 'login_poster_model.g.dart';

@freezed
class LoginPoster with _$LoginPoster {
  const factory LoginPoster({
    required double? popularity,
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _LoginPoster;

  factory LoginPoster.fromJson(Map<String, dynamic> json) =>
      _$LoginPosterFromJson(json);
}
