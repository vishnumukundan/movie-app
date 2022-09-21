part of 'appbar_search_cubit.dart';

@freezed
class AppbarSearchState with _$AppbarSearchState {
  const factory AppbarSearchState.initial({
    @Default(false) bool focusEnabled,
    @Default(0) int iconIndex,
  }) = _Initial;
}
