part of 'login_poster_bloc.dart';

@freezed
class LoginPosterState with _$LoginPosterState {
  const factory LoginPosterState({
    required bool isLoading,
    required bool hasError,
    required bool isSuccess,
    required List<LoginPoster> loginPosterDataList,
  }) = _LoginPosterState;

  factory LoginPosterState.initial() {
    return const LoginPosterState(
      isLoading: true,
      hasError: false,
      isSuccess: false,
      loginPosterDataList: [],
    );
  }
}
