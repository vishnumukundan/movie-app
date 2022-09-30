// ignore_for_file: unused_element, invalid_use_of_visible_for_testing_member

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_event.dart';
part 'appbar_state.dart';
part 'appbar_bloc.freezed.dart';

enum HomePageCurrentPage { movies, tvShows }

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  AppbarBloc()
      : super(const _Initial(currentPage: HomePageCurrentPage.movies)) {
    on<_MoviesSelected>((event, emit) {
      emit(state.copyWith(currentPage: HomePageCurrentPage.movies));
    });

    on<_TvShowsSelected>((event, emit) {
      emit(state.copyWith(currentPage: HomePageCurrentPage.tvShows));
    });
  }
}
