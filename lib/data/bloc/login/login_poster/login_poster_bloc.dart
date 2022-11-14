import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/domain/repositories/login/i_login_poster_repo.dart';

import '../../../models/login/login_poster_model.dart';

part 'login_poster_bloc.freezed.dart';
part 'login_poster_event.dart';
part 'login_poster_state.dart';

@injectable
class LoginPosterBloc extends Bloc<LoginPosterEvent, LoginPosterState> {
  final ILoginImagesRepo _loginImagesRepo;
  LoginPosterBloc(this._loginImagesRepo) : super(LoginPosterState.initial()) {
    on<_GetLoginPosterImages>((event, emit) async {
      if (state.loginPosterDataList.isNotEmpty) {
        emit(LoginPosterState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          loginPosterDataList: state.loginPosterDataList,
        ));
      }

      emit(state.copyWith(isLoading: true));
      final Either<NetworkError, List<LoginPoster>> loginPosterOption =
          await _loginImagesRepo.getLoginPosterImages();
      emit(loginPosterOption.fold(
        (failure) => state.copyWith(
          isLoading: false,
          hasError: true,
        ),
        (success) => LoginPosterState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          loginPosterDataList: success,
        ),
      ));
    });
  }
}
