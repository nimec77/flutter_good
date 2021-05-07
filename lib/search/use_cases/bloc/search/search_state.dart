part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.searchInProgress(final String query) = _SearchStateInProgress;

  const factory SearchState.searchSuccess(UnmodifiableListView<TextData> texts) = _SearchStateSuccess;
}