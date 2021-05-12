import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_good/search/data/repositories/search_history_repository_imp.dart';

void main() {
  const history = [
    'history1',
    'history2',
    'history3',
    'history4',
    'history5',
  ];
  const max = 5;
  final searchHistoryRepository = SearchHistoryRepositoryImp(history: history, maxHistoryLength: max);

  group('Test SearchHistoryRepository', () {

  });
}