import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';

part 'navigation_from_bloc.freezed.dart';
part 'navigation_from_event.dart';
part 'navigation_from_state.dart';

class NavigationFromBloc
    extends Bloc<NavigationFromEvent, NavigationFromState> {
  NavigationFromBloc()
      : super(const _Initial(
          navigateFrom: NavigateFrom.none,
        )) {
    //
    //
    //
    on<_SetNavigationFrom>((event, emit) {
      emit(NavigationFromState.initial(navigateFrom: event.navigateFrom));
    });
  }
}
