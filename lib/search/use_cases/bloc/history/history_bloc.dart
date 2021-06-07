import 'dart:async';

import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/ports/history_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'history_bloc.freezed.dart';

part 'history_bloc.g.dart';

part 'history_event.dart';

part 'history_state.dart';

class HistoryBloc extends HydratedBloc<HistoryEvent, HistoryState> {
  HistoryBloc(this.historyRepository) : super(const HistoryState.initial());

  final HistoryRepository historyRepository;

  @override
  Stream<HistoryState> mapEventToState(
    HistoryEvent event,
  ) async* {
    yield* event.map(
      added: (e) async* {
        yield* _mapAddedEventToState(e.term);
      },
      deleted: (e) async* {
        yield* _mapDeletedEventToState(e.term);
      },
      selected: (e) async* {
        yield* _mapSelectedEventToState(e.term);
      },
      changed: (e) async* {
        yield* _mapChangedEventToState(e.filter);
      },
    );
  }

  Stream<HistoryState> _mapAddedEventToState(String term) async* {
    yield HistoryState.termsFiltered(term: term, history: historyRepository.addSearchTerm(term));
  }

  Stream<HistoryState> _mapDeletedEventToState(String term) async* {
    yield HistoryState.termsFiltered(term: '', history: historyRepository.deleteSearchTerm(term));
  }

  Stream<HistoryState> _mapSelectedEventToState(String term) async* {
    yield HistoryState.termsFiltered(term: term, history: historyRepository.putSearchTermFirst(term));
  }

  Stream<HistoryState> _mapChangedEventToState(String filter) async* {
    yield HistoryState.termsFiltered(term: filter, history: historyRepository.filterSearchTerms(filter));
  }

  @override
  HistoryState? fromJson(Json json) {
    final stateOption = HistoryState.fromJson(json)
      ..maybeMap(termsFiltered: (state) => historyRepository.initialHistory(state.history), orElse: () {});

    return stateOption;
  }

  @override
  Map<String, dynamic>? toJson(HistoryState state) => state.toJson();
}
