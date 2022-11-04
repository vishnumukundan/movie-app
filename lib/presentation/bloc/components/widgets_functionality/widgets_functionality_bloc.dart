import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';

part 'widgets_functionality_bloc.freezed.dart';
part 'widgets_functionality_event.dart';
part 'widgets_functionality_state.dart';

class WidgetsFunctionalityBloc
    extends Bloc<WidgetsFunctionalityEvent, WidgetsFunctionalityState> {
  WidgetsFunctionalityBloc() : super(WidgetsFunctionalityState.initial()) {
    ///
    /// On movie list scroll button press event
    on<_ListScrollButtonPress>((event, emit) {
      emit(state.copyWith(
        movieListScrollButtonCurrentIndex: event.buttonIndex,
        movieListScrollButtonQuery: event.dayOrWeek,
      ));
    });
  }
}
