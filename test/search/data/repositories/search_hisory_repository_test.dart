import 'package:flutter_good/search/use_cases/ports/search_history_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_good/search/data/repositories/search_history_repository_imp.dart';

void main() {
  const history = [
    'history1',
    'history2',
    'history3',
    'history4',
    'history5',
    'history6',
  ];
  const max = 5;
  late SearchHistoryRepository searchHistoryRepository;

  setUp(() {
    searchHistoryRepository = SearchHistoryRepositoryImp(history: history, maxHistoryLength: max);
  });

  group('Test SearchHistoryRepository', () {
    test('should return a list of length 5 after adding', () {
      final result = searchHistoryRepository.addSearchTerm('history7');
      expect(result, ['history7', 'history6', 'history5', 'history4', 'history3']);
    });

    test('should return a list of length max-1 after deletion', () {
      final result = searchHistoryRepository.deleteSearchTerm('history2');
      expect(result, ['history6', 'history5', 'history4', 'history3']);
    });

    test('should return a list of one line "history6"', () {
      final result = searchHistoryRepository.filterSearchTerms('6');
      expect(result, ['history6']);
    });

    test('should return term first in a list', () {
      final result = searchHistoryRepository.putSearchTermFirst('history2');
      expect(result, ['history2', 'history6', 'history5', 'history4', 'history3']);
    });
  });
}
