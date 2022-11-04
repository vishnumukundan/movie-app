part of 'navigation_from_bloc.dart';

@freezed
class NavigationFromEvent with _$NavigationFromEvent {
  const factory NavigationFromEvent.setNavigationFrom({
    required NavigateFrom navigateFrom,
  }) = _SetNavigationFrom;
}
