part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchStateInitial;

  const factory SearchState.searchInProgress() = _SearchStateInProgress;

  const factory SearchState.searchSuccess(Iterable<TextData> texts) = _SearchStateSuccess;

  const factory SearchState.searchFailure(TextDataFailure textDataFailure) = _SearchStateFailure;
}