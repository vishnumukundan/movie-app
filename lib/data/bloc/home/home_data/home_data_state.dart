part of 'home_data_bloc.dart';

@freezed
class HomeDataState with _$HomeDataState {
  const factory HomeDataState({
    required bool isLoading,
    required bool hasError,
    required bool isSucces,
    required List<Result> topRatedList,
    required List<Result> trendingList,
    required List<Result> topTamilList,
    required List<Result> topHindiList,
    required List<Result> topMalayalamList,
  }) = _HomeDataState;

  factory HomeDataState.initial() {
    return const HomeDataState(
      isLoading: true,
      hasError: false,
      isSucces: false,
      topRatedList: [],
      trendingList: [],
      topTamilList: [],
      topHindiList: [],
      topMalayalamList: [],
    );
  }
}
