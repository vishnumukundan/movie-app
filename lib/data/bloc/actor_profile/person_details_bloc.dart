// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/errors/network_error/network_error.dart';
import 'package:movie_app/data/models/actor_profile/actor_profile_model.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/domain/repositories/actor_profile/i_actor_profile_repo.dart';
import 'package:movie_app/domain/repositories/home/movie_sroll_list/i_movie_list_repo.dart';

part 'person_details_bloc.freezed.dart';
part 'person_details_event.dart';
part 'person_details_state.dart';

@injectable
class PersonDetailsBloc extends Bloc<PersonDetailsEvent, PersonDetailsState> {
  final IActorProfileRepo _iActorProfileRepo;
  final IMovieListRepo _iMovieListRepo;
  PersonDetailsBloc(this._iActorProfileRepo, this._iMovieListRepo)
      : super(PersonDetailsState.initial()) {
    on<GetPersonDetails>((event, emit) async {
      // show loading
      emit(state.copyWith(isLoading: true));
      //get data
      final result =
          await _iActorProfileRepo.getPersonDetails(personId: event.personId);

      final _state = result.fold(
        (NetworkError failure) => state.copyWith(
          isLoading: false,
          hasError: true,
        ),
        (PersonDetails success) => PersonDetailsState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          personData: success,
          movieDataList: state.movieDataList,
        ),
      );
      // show to ui
      emit(_state);
    });

    on<GetMovieList>((event, emit) async {
      if (state.movieDataList.results.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          movieDataList: state.movieDataList,
        ));
      }

      // show loading
      emit(state.copyWith(isLoading: true));
      //get data
      final result =
          await _iMovieListRepo.getMovieListByPerson(personId: event.personId);

      final _state = result.fold(
          (NetworkError failure) => state.copyWith(
                isLoading: false,
                hasError: true,
              ),
          (MovieList success) => PersonDetailsState(
                isLoading: false,
                hasError: false,
                isSuccess: true,
                personData: state.personData,
                movieDataList: success,
              ));
      // show to ui
      emit(_state);
    });
  }
}
