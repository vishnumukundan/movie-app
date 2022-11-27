import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_search_bloc.freezed.dart';
part 'appbar_search_event.dart';
part 'appbar_search_state.dart';

class AppbarSearchBloc extends Bloc<AppbarSearchEvent, AppbarSearchState> {
  AppbarSearchBloc() : super(AppbarSearchState.initial()) {
    ///
    ///
    on<_UserTappedTextField>((event, emit) {
      emit(state.copyWith(isTextFieldFocused: event.isTextFieldFocused));
    });
    //
    on<_ColumnButtonPress>((event, emit) {
      emit(state.copyWith(columnIconIndex: event.columnIconIndex));
    });
  }
}
