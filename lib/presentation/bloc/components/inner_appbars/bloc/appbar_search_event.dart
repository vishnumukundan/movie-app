part of 'appbar_search_bloc.dart';

@freezed
class AppbarSearchEvent with _$AppbarSearchEvent {
  const factory AppbarSearchEvent.userTappedTextField({
    required bool isTextFieldFocused,
  }) = _UserTappedTextField;
  const factory AppbarSearchEvent.columnButtonPress({
    required int columnIconIndex,
  }) = _ColumnButtonPress;
}
