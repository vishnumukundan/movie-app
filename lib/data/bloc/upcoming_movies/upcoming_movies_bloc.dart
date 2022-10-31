// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/data/models/upcoming_movies/upcoming_movies_model.dart';
import 'package:movie_app/domain/repositories/upcoming_movies/i_upcoming_movies_repo.dart';

part 'upcoming_movies_bloc.freezed.dart';
part 'upcoming_movies_event.dart';
part 'upcoming_movies_state.dart';

@injectable
class UpcomingMoviesBloc
    extends Bloc<UpcomingMoviesEvent, UpcomingMoviesState> {
  final IUpcomingMoviesRepo _iUpcomingMoviesRepo;
  UpcomingMoviesBloc(this._iUpcomingMoviesRepo)
      : super(UpcomingMoviesState.initial()) {
    on<GetUpcomingMovies>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      //date
      final DateTime now = DateTime.now();

      //add 3 days
      final DateTime newDate = now.add(const Duration(days: 3));

      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      final String formattedNewDate = formatter.format(newDate);

      // fetching data
      final _result =
          await _iUpcomingMoviesRepo.getUpcomingMovies(date: formattedNewDate);

      final _state = _result.fold(
        (failure) => state.copyWith(
          isLoading: false,
          hasError: true,
        ),
        (success) => UpcomingMoviesState(
          isLoading: false,
          hasError: false,
          isSuccess: true,
          dataList: success,
        ),
      );
      emit(_state);
    });
  }
}
