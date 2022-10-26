part of 'login_poster_bloc.dart';

@freezed
class LoginPosterState with _$LoginPosterState {
  const factory LoginPosterState({
    required bool isLoading,
    required bool hasError,
    required List<LoginPoster> loginPosterDataList,
    required Option<Either<NetworkError, List<LoginPoster>>>
        loginPosterFailureOrSuccessOption,
  }) = _LoginPosterState;

  factory LoginPosterState.initial() {
    return const LoginPosterState(
      isLoading: true,
      hasError: false,
      loginPosterFailureOrSuccessOption: None(),
      loginPosterDataList: [],
    );
  }
}
