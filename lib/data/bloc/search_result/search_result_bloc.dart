// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/domain/repositories/search_result/i_search_result_repo.dart';

part 'search_result_bloc.freezed.dart';
part 'search_result_event.dart';
part 'search_result_state.dart';

@injectable
class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  final ISearchResultRepo _iSearchResultRepo;
  SearchResultBloc(this._iSearchResultRepo)
      : super(SearchResultState.initial()) {
    ///
    ///
    ///
    ///
    on<_GetPopularMovies>((event, emit) async {
// if data already loaded
      if (state.popularDataList.results.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          popularDataList: state.popularDataList,
        ));
      }
// show loading
      emit(state.copyWith(isLoading: true));
// fetch data
      final _result = await _iSearchResultRepo.getPopularMovies();

// apply to state
      final _state = _result.fold(
        (failure) =>
            state.copyWith(isLoading: false, hasError: true, isSuccess: false),
        (success) => SearchResultState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          popularDataList: success,
          searchedDataList: state.searchedDataList,
        ),
      );
// emit
      emit(_state);
    });

    ///
    ///
    ///
    ///
    ///
    on<_GetSearchedMovies>((event, emit) async {
// if data already loaded
      if (state.popularDataList.results.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          searchedDataList: state.searchedDataList,
        ));
      }
// show loading
      emit(state.copyWith(isLoading: true));
// fetch data
      final _result =
          await _iSearchResultRepo.getSearchedMovies(query: event.query ?? '');

// apply to state
      final _state = _result.fold(
        (failure) =>
            state.copyWith(isLoading: false, hasError: true, isSuccess: false),
        (success) => SearchResultState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          popularDataList: state.popularDataList,
          searchedDataList: success,
        ),
      );
// emit
      emit(_state);
    });
  }
}
