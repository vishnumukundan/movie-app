part of 'appbar_search_bloc.dart';

@freezed
class AppbarSearchEvent with _$AppbarSearchEvent {
  const factory AppbarSearchEvent.userTapped() = _UserTaped;
  const factory AppbarSearchEvent.columnGridChange() = _ColumnGridChange;
}
