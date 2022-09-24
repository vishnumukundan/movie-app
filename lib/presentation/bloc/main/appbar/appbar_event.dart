part of 'appbar_bloc.dart';

@freezed
class AppbarEvent with _$AppbarEvent {
  const factory AppbarEvent.userTapped() = _UserTapped;
}
