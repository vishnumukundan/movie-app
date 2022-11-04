part of 'navigation_from_bloc.dart';

@freezed
class NavigationFromState with _$NavigationFromState {
  const factory NavigationFromState.initial({
    required NavigateFrom navigateFrom,
  }) = _Initial;
}
