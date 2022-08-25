import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'botom_nav_state.dart';
part 'botom_nav_cubit.freezed.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState.initial(selectedIndex: 0));
  void setIndex(index) => emit(BottomNavState.initial(selectedIndex: index));
}
