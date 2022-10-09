// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/domain/repositories/movie_details/i_movie_details_repo.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final IMovieDetailsRepo _iMovieDetailsRepo;
  MovieDetailsBloc(this._iMovieDetailsRepo)
      : super(MovieDetailsState.initial()) {
    on<_GetMovieDetails>((event, emit) async {
      final _result =
          await _iMovieDetailsRepo.getMovieDetails(movieId: event.movieId);

      final _state = _result.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => MovieDetailsState(
          isLoading: false,
          isError: false,
          movieDetailsData: success,
        ),
      );
      emit(_state);
    });
  }
}
