part of 'botom_nav_cubit.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState.initial({
    required int selectedIndex,
  }) = _Initial;
}
