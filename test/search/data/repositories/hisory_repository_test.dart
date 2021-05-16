import 'package:flutter_good/search/use_cases/ports/history_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_good/search/data/repositories/history_repository_imp.dart';

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
  late HistoryRepository historyRepository;

  setUp(() {
    historyRepository = HistoryRepositoryImp(history: history, maxHistoryLength: max);
  });

  group('Test SearchHistoryRepository', () {
    test('should return a list ["term"] after adding "term"', () {
      final emptyHistoryRepository = HistoryRepositoryImp();
      final result = emptyHistoryRepository.addSearchTerm('term');
      expect(result, ['term']);
    });

    test('should return a list of length 5 after adding', () {
      final result = historyRepository.addSearchTerm('history7');
      expect(result, ['history7', 'history6', 'history5', 'history4', 'history3']);
    });

    test('should return a list of length max-1 after deletion', () {
      final result = historyRepository.deleteSearchTerm('history2');
      expect(result, ['history6', 'history5', 'history4', 'history3']);
    });

    test('should return a list of one line "history6"', () {
      final result = historyRepository.filterSearchTerms('6');
      expect(result, ['history6']);
    });

    test('should return term first in a list', () {
      final result = historyRepository.putSearchTermFirst('history2');
      expect(result, ['history2', 'history6', 'history5', 'history4', 'history3']);
    });

    test('should return empty list', () {
      final emptyHistoryRepository = HistoryRepositoryImp();
      final result = emptyHistoryRepository.deleteSearchTerm('term');
      expect(result, []);
    });
  });
}
