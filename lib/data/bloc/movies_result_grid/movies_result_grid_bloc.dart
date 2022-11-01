// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/domain/repositories/movies_result_grid/i_movies_result_grid_repo.dart';

part 'movies_result_grid_bloc.freezed.dart';
part 'movies_result_grid_event.dart';
part 'movies_result_grid_state.dart';

@injectable
class MoviesResultGridBloc
    extends Bloc<MoviesResultGridEvent, MoviesResultGridState> {
  final IMoviesResultGridRepo _iMoviesResultGridRepo;
  MoviesResultGridBloc(this._iMoviesResultGridRepo)
      : super(MoviesResultGridState.initial()) {
    //
    // getting movies by genre
    on<_GetMovieByGenre>((event, emit) async {
      if (state.movieDataList.results.isNotEmpty) {
        emit(
          MoviesResultGridState(
            isLoading: false,
            hasError: false,
            isSuccess: true,
            movieDataList: state.movieDataList,
          ),
        );
      }
      // loding
      emit(state.copyWith(isLoading: true));

      // fetching data
      final _result =
          await _iMoviesResultGridRepo.getMoviesByGenre(genre: event.genre);

      // to state
      final _state = _result.fold(
        (failure) => state.copyWith(
          isLoading: false,
          hasError: true,
          isSuccess: false,
        ),
        (success) => MoviesResultGridState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          movieDataList: success,
        ),
      );

      emit(_state);
    });

    //
    // getting movies by actors
    on<_GetMovieByPerson>((event, emit) async {
      if (state.movieDataList.results.isNotEmpty) {
        emit(
          MoviesResultGridState(
            isLoading: false,
            hasError: false,
            isSuccess: true,
            movieDataList: state.movieDataList,
          ),
        );
      }
      // loding
      emit(state.copyWith(isLoading: true));

      // fetching data
      final _result = await _iMoviesResultGridRepo.getMoviesByPerson(
          personId: event.personId);

      // to state
      final _state = _result.fold(
        (failure) => state.copyWith(
          isLoading: false,
          hasError: true,
          isSuccess: false,
        ),
        (success) => MoviesResultGridState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          movieDataList: success,
        ),
      );

      emit(_state);
    });
  }
}
