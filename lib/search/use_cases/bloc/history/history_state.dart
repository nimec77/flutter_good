part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = HistoryStateInitail;

  const factory HistoryState.termsFiltered(List<String> terms) = HistoryStateTermsFiltered;
}