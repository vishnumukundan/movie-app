import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError {
  const factory NetworkError() = _NetworkError;

  const factory NetworkError.clientError() = _ClientError;
  const factory NetworkError.serverError() = _ServerError;
}
