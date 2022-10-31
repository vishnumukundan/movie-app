part of 'discover_bloc.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState(
      {required bool isLoading,
      required bool hasError,
      required bool isSuccess,
      required List<Genre> genresDataList,
      required List<Cast> personDataList}) = _DiscoverState;
  factory DiscoverState.initial() {
    return const DiscoverState(
      isLoading: true,
      hasError: false,
      isSuccess: false,
      genresDataList: [],
      personDataList: [],
    );
  }
}
