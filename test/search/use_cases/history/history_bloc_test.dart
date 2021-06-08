import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_good/search/use_cases/bloc/history/history_bloc.dart';
import 'package:flutter_good/search/use_cases/ports/repositories/history_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path_provider/path_provider.dart';

class MockHistoryRepository extends Mock implements HistoryRepository {}

void main() {

  setUpAll(() async {
    HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory(),
    );
  });

  group('HistoryBloc tests', () {
    final mockHistoryRepository = MockHistoryRepository();
    const history = [
      'history1',
      'history2',
      'history3',
      'history4',
      'history5',
    ];
    final historyDeleted = history.skip(1).toList();
    final historySelected = [...history]
      ..insert(0, history.first)
      ..first = history.last
      ..removeLast();
    final historyChanged = history.where((element) => element == '1').toList();

    test('Initial state is initial', () {
      expect(HistoryBloc(mockHistoryRepository).state, equals(const HistoryState.initial()));
    });

    blocTest<HistoryBloc, HistoryState>('emits [HistoryState.termsFiltered] when event HistoryEvent.added',
        build: () => HistoryBloc(mockHistoryRepository),
        act: (historyBloc) {
          const term = 'term';
          when(() => mockHistoryRepository.addSearchTerm(any())).thenReturn([term]);

          historyBloc.add(const HistoryEvent.added(term));
        },
        expect: () => [
              const HistoryState.termsFiltered(term: 'term', history: ['term']),
            ],
        verify: (_) => verify(() => mockHistoryRepository.addSearchTerm(any())).called(1));

    blocTest<HistoryBloc, HistoryState>(
        'emits [HistoryState.termsFiltered] with list of ["history2", "history3", "history4", "history5"] '
        'when event HistoryEvent.deleted("history1")',
        build: () {
          when(() => mockHistoryRepository.deleteSearchTerm(history.first)).thenReturn(historyDeleted);
          
          return HistoryBloc(mockHistoryRepository);
        },
        act: (historyBloc) => historyBloc.add(HistoryEvent.deleted(history.first)),
        expect: () => [
              HistoryState.termsFiltered(term: '', history: historyDeleted),
            ],
        verify: (_) => verify(() => mockHistoryRepository.deleteSearchTerm(history.first)).called(1));

    blocTest<HistoryBloc, HistoryState>(
        'emits [HistoryState.termsFiltered] with list of ["history5", "history1", "history2", "history3", "history4"] '
        'when event HistoryEvent.selected("history5")',
        build: () => HistoryBloc(mockHistoryRepository),
        act: (historyBloc) {
          when(() => mockHistoryRepository.putSearchTermFirst(history.last)).thenReturn(historySelected);

          historyBloc.add(HistoryEvent.selected(history.last));
        },
        expect: () => [
              HistoryState.termsFiltered(term: history.last, history: historySelected),
            ],
        verify: (_) => verify(() => mockHistoryRepository.putSearchTermFirst(history.last)).called(1));

    blocTest<HistoryBloc, HistoryState>(
      'emits [HistoryState.termFiltered] with list of ["history1"] when event HistoryEvent.changed("1")',
      build: () => HistoryBloc(mockHistoryRepository),
      act: (historyBloc) {
        when(() => mockHistoryRepository.filterSearchTerms('1')).thenReturn(historyChanged);

        historyBloc.add(const HistoryEvent.changed('1'));
      },
      expect: () => [
        HistoryState.termsFiltered(term: '1', history: historyChanged),
      ],
      verify: (_) => verify(() => mockHistoryRepository.filterSearchTerms('1')).called(1),
    );

    blocTest<HistoryBloc, HistoryState>(
      'emits [HistoryState.termFiltered] with empty list and term "1" when event HistoryEvent.change("1")',
      build: () => HistoryBloc(mockHistoryRepository),
      act: (historyBloc) {
        when(() => mockHistoryRepository.filterSearchTerms('1')).thenReturn([]);

        historyBloc.add(const HistoryEvent.changed('1'));
      },
      expect: () => [
        const HistoryState.termsFiltered(term: '1', history: []),
      ],
      verify: (_) => verify(() => mockHistoryRepository.filterSearchTerms('1')).called(1),
    );
  });
}
