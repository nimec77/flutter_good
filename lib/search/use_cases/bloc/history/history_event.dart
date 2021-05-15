part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.added(String term) = HistoryEventAdded;

  const factory HistoryEvent.deleted(String term) = HistoryEventDeleted;

  const factory HistoryEvent.selected(String term) = HistoryEventSelected;

  const factory HistoryEvent.changed(String filter) = HistoryEventChanded;
}