import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_search_state.dart';
part 'appbar_search_cubit.freezed.dart';

class AppbarSearchCubit extends Cubit<AppbarSearchState> {
  AppbarSearchCubit() : super(const AppbarSearchState.initial());
  void isFocused() {
    return emit(
      const AppbarSearchState.initial(
        focusEnabled: true,
      ),
    );
  }

  void setIconIndex(index) => emit(AppbarSearchState.initial(
        iconIndex: index,
        focusEnabled: true,
      ));
}
