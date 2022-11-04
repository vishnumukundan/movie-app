part of 'widgets_functionality_bloc.dart';

@freezed
class WidgetsFunctionalityEvent with _$WidgetsFunctionalityEvent {
  //
  /// this event is called when user click the button in the movie list scroll widget
  const factory WidgetsFunctionalityEvent.listScrollButtonPress({
    required String dayOrWeek,
    required int buttonIndex,
  }) = _ListScrollButtonPress;
  //
}
