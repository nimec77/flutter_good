import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_good/search/search.dart';
import 'package:mocktail/mocktail.dart';

class MockTextRepository extends Mock implements TextRepository {}

void main() {
  group('SearchBloc', () {
    final mockTextRepository = MockTextRepository();
    final searchResult = [TextData('Text 0', DateTime.now())];
    final searchStream = Stream<Either<TextDataFailure, Iterable<TextData>>>.value(Right(searchResult));

    test('Initial state is initial', () {
      expect(SearchBloc(mockTextRepository).state, equals(const SearchState.initial()));
    });

    blocTest<SearchBloc, SearchState>(
      'emits [], when successful',
      build: () {
        when(() => mockTextRepository.searchText(any())).thenAnswer((_) => searchStream);

        return SearchBloc(mockTextRepository);
      },
      act: (searchBloc) => searchBloc.add(const SearchEvent.started('query')),
      expect: () => [
        const SearchState.searchInProgress(),
        SearchState.searchSuccess(searchResult),
      ],
    );
  });
}
