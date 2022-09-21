import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_search_event.dart';
part 'appbar_search_state.dart';
part 'appbar_search_bloc.freezed.dart';

class AppbarSearchBloc extends Bloc<AppbarSearchEvent, AppbarSearchState> {
  AppbarSearchBloc() : super(const _TextFieldFocus(isFocused: false)) {
    on<_UserTaped>((event, emit) {
      emit(const AppbarSearchState.textFieldFocus(isFocused: true));
    });

    on<_ColumnGridChange>((event, emit) {
      emit(const AppbarSearchState.iconSwap(iconIndex: 0));
    });
  }
}
