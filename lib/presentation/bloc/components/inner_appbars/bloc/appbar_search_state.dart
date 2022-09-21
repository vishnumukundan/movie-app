part of 'appbar_search_bloc.dart';

@freezed
class AppbarSearchState with _$AppbarSearchState {
  const factory AppbarSearchState.textFieldFocus({
    required bool isFocused,
  }) = _TextFieldFocus;

  const factory AppbarSearchState.iconSwap({
    @Default(0) int iconIndex,
  }) = _iconIndex;
}
