import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/enums/error_types.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTextRepository extends Mock implements TextRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue<ErrorTypes>(ErrorTypes.noError);
  });

  group('SearchBloc tests', () {
    final mockTextRepository = MockTextRepository();
    final searchResult = [TextData('Text 0', DateTime.now())];
    final searchStreamResult = Stream<Either<TextDataFailure, List<TextData>>>.value(right(searchResult));
    final searchFailure = const TextDataFailure.error('Test error');
    final searchStreamFailure = Stream<Either<TextDataFailure, List<TextData>>>.value(left(searchFailure));

    test('Initial state is initial', () {
      expect(SearchBloc(mockTextRepository).state, equals(const SearchState.initial()));
    });

    blocTest<SearchBloc, SearchState>(
      'emits [SearchState.searchSuccess] when event SearchEvent.textDataReceived successful',
      build: () => SearchBloc(mockTextRepository),
      act: (searchBloc) => searchBloc.add(SearchEvent.textDataReceived(right(searchResult))),
      expect: () => [
        SearchState.searchSuccess(searchResult),
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'emits [SearchState.searchFailure] when event SearchEvent.textDataReceived unsuccessful',
      build: () => SearchBloc(mockTextRepository),
      act: (searchBloc) =>
          searchBloc.add(SearchEvent.textDataReceived(left(const TextDataFailure.error('Test error')))),
      expect: () => [
        SearchState.searchFailure(searchFailure),
      ],
    );

    blocTest<SearchBloc, SearchState>(
        'emits [SearchState.searchInProgress, SearchState.searchSuccess], when successful',
        build: () {
          when(() => mockTextRepository.search(any(), errorTypes: any(named: 'errorTypes')))
              .thenAnswer((_) => searchStreamResult);

          return SearchBloc(mockTextRepository);
        },
        act: (searchBloc) => searchBloc.add(const SearchEvent.started('query')),
        expect: () => [
              const SearchState.searchInProgress(),
              SearchState.searchSuccess(searchResult),
            ],
        verify: (_) {
          verify(() => mockTextRepository.search(any(), errorTypes: any(named: 'errorTypes'))).called(1);
        });

    blocTest<SearchBloc, SearchState>('emits [SearchState.searchInProgress, SearchState.failure] when unsuccessful',
        build: () => SearchBloc(mockTextRepository),
        act: (searchBloc) {
          when(() => mockTextRepository.search(any(), errorTypes: any(named: 'errorTypes')))
              .thenAnswer((_) => searchStreamFailure);

          searchBloc.add(const SearchEvent.started('query'));
        },
        expect: () => [
              const SearchState.searchInProgress(),
              SearchState.searchFailure(searchFailure),
            ],
        verify: (_) {
          verify(() => mockTextRepository.search(any(), errorTypes: any(named: 'errorTypes'))).called(1);
        });
  });
}
