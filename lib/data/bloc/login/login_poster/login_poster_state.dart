part of 'login_poster_bloc.dart';

@freezed
class LoginPosterState with _$LoginPosterState {
  const factory LoginPosterState({
    required bool isLoading,
    required List<LoginPoster> loginPosterDataList,
    required Option<Either<NetworkError, List<LoginPoster>>>
        loginPosterFailureOrSuccessOption,
  }) = _LoginPosterState;

  factory LoginPosterState.initial() {
    return const LoginPosterState(
      isLoading: true,
      loginPosterFailureOrSuccessOption: None(),
      loginPosterDataList: [],
    );
  }
}
