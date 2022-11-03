// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/domain/repositories/home/i_home_repo.dart';

part 'home_data_bloc.freezed.dart';
part 'home_data_event.dart';
part 'home_data_state.dart';

@injectable
class HomeDataBloc extends Bloc<HomeDataEvent, HomeDataState> {
  final IHomeRepo _iHomeRepo;
  HomeDataBloc(this._iHomeRepo) : super(HomeDataState.initial()) {
    //////////////
    ////////
    ///
    on<_GetPopularMovies>((event, emit) async {
      //
      if (state.popularList.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSucces: true,
          popularList: state.popularList,
        ));
      }
      //
      emit(state.copyWith(isLoading: true));
      //
      final _resut = await _iHomeRepo.getPopularMovies();
      //
      final _state = _resut.fold(
        (failure) =>
            state.copyWith(isLoading: false, hasError: true, isSucces: false),
        (success) => HomeDataState(
          isLoading: false,
          hasError: false,
          isSucces: true,
          popularList: success,
          trendingList: state.trendingList,
          topTamilList: state.topTamilList,
          topHindiList: state.topHindiList,
          topMalayalamList: state.topMalayalamList,
        ),
      );
      emit(_state);
    });

    //////////////
    ////////
    ///
    on<_GetTrendingMovies>((event, emit) async {
      //
      if (state.trendingList.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSucces: true,
          trendingList: state.trendingList,
        ));
      }
      //
      emit(state.copyWith(isLoading: true));
      //
      final _resut = await _iHomeRepo.getTrendingMovies();
      //
      final _state = _resut.fold(
        (failure) =>
            state.copyWith(isLoading: false, hasError: true, isSucces: false),
        (success) => HomeDataState(
          isLoading: false,
          hasError: false,
          isSucces: true,
          popularList: state.popularList,
          trendingList: success,
          topTamilList: state.topTamilList,
          topHindiList: state.topHindiList,
          topMalayalamList: state.topMalayalamList,
        ),
      );
      emit(_state);
    });

    //////////////
    ////////
    ///
    on<_GetTopTamilMovies>((event, emit) async {
      //
      if (state.topTamilList.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSucces: true,
          topTamilList: state.topTamilList,
        ));
      }
      //
      emit(state.copyWith(isLoading: true));
      //
      final _resut = await _iHomeRepo.getTopTamilMovies();
      //
      final _state = _resut.fold(
        (failure) =>
            state.copyWith(isLoading: false, hasError: true, isSucces: false),
        (success) => HomeDataState(
          isLoading: false,
          hasError: false,
          isSucces: true,
          popularList: state.popularList,
          trendingList: state.trendingList,
          topTamilList: success,
          topHindiList: state.topHindiList,
          topMalayalamList: state.topMalayalamList,
        ),
      );
      emit(_state);
    });

    //////////////
    ////////
    ///
    on<_GetTopHindiMovies>((event, emit) async {
      //
      if (state.topHindiList.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSucces: true,
          topHindiList: state.topHindiList,
        ));
      }
      //
      emit(state.copyWith(isLoading: true));
      //
      final _resut = await _iHomeRepo.getTopHindiMovies();
      //
      final _state = _resut.fold(
        (failure) =>
            state.copyWith(isLoading: false, hasError: true, isSucces: false),
        (success) => HomeDataState(
          isLoading: false,
          hasError: false,
          isSucces: true,
          popularList: state.popularList,
          trendingList: state.trendingList,
          topTamilList: state.topTamilList,
          topHindiList: success,
          topMalayalamList: state.topMalayalamList,
        ),
      );
      emit(_state);
    });

    //////////////
    ////////
    ///
    on<_GetTopMalayalamMovies>((event, emit) async {
      //
      if (state.topMalayalamList.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          isSucces: true,
          topMalayalamList: state.topMalayalamList,
        ));
      }
      //
      emit(state.copyWith(isLoading: true));
      //
      final _resut = await _iHomeRepo.getTopMalayalamMovies();
      //
      final _state = _resut.fold(
        (failure) =>
            state.copyWith(isLoading: false, hasError: true, isSucces: false),
        (success) => HomeDataState(
          isLoading: false,
          hasError: false,
          isSucces: true,
          popularList: state.popularList,
          trendingList: state.trendingList,
          topTamilList: state.topTamilList,
          topHindiList: state.topHindiList,
          topMalayalamList: success,
        ),
      );
      emit(_state);
    });
  }
}
