// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/domain/repositories/dicover/i_discover_repo.dart';

part 'discover_bloc.freezed.dart';
part 'discover_event.dart';
part 'discover_state.dart';

@injectable
class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  final IDiscoverRepo _iDiscoverRepo;

  DiscoverBloc(this._iDiscoverRepo) : super(DiscoverState.initial()) {
    on<GetMovieGenres>((event, emit) async {
      //loading
      emit(state.copyWith(isLoading: true));

      // fetch data
      final _result = await _iDiscoverRepo.getMovieGenres();
      //
      final _state = _result.fold(
        (failure) => state.copyWith(isLoading: false, hasError: true),
        (success) => DiscoverState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          genresDataList: success,
          personDataList: state.personDataList,
        ),
      );
      emit(_state);
    });
    on<GetPopularPersons>((event, emit) async {
      //loading
      emit(state.copyWith(isLoading: true));

      // fetch data
      final _result = await _iDiscoverRepo.getPopularPersons();
      //
      final _state = _result.fold(
        (failure) => state.copyWith(isLoading: false, hasError: true),
        (success) => DiscoverState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          genresDataList: state.genresDataList,
          personDataList: success,
        ),
      );
      emit(_state);
    });
  }
}
