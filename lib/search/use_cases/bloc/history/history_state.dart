part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = HistoryStateInitail;

  const factory HistoryState.termsFiltered({required String term, required List<String> history}) =
      HistoryStateTermsFiltered;

  factory HistoryState.fromJson(Json json) => _$HistoryStateFromJson(json);
}
