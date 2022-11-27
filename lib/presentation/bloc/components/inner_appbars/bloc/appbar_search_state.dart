part of 'appbar_search_bloc.dart';

@freezed
class AppbarSearchState with _$AppbarSearchState {
  const factory AppbarSearchState({
    required int columnIconIndex,
    required bool isTextFieldFocused,
  }) = _AppbarSearchState;
  factory AppbarSearchState.initial() {
    return const AppbarSearchState(
      columnIconIndex: 0,
      isTextFieldFocused: false,
    );
  }
}
