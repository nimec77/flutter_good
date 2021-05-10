part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchStateInitial;

  const factory SearchState.searchInProgress() = SearchStateInProgress;

  const factory SearchState.searchSuccess(List<TextData> textsData) = SearchStateSuccess;

  const factory SearchState.searchFailure(TextDataFailure textDataFailure) = SearchStateFailure;
}
