part of 'appbar_bloc.dart';

@freezed
class AppbarState with _$AppbarState {
  const factory AppbarState.initial({
    required HomePageCurrentPage currentPage,
  }) = _Initial;
}
