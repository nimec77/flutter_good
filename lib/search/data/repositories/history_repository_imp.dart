import 'package:flutter_good/search/use_cases/ports/repositories/history_repository.dart';

class HistoryRepositoryImp implements HistoryRepository {
  HistoryRepositoryImp({List<String> history = const [], this.maxHistoryLength = 5}) {
    _history = _removeUnnecessary(history, maxHistoryLength);
  }

  final int maxHistoryLength;
  late List<String> _history;

  @override
  void initialHistory(List<String> history) {
    _history = _removeUnnecessary(history, maxHistoryLength);
  }

  List<String> _removeUnnecessary(List<String> list, int max) {
    if (list.length <= max) {
      return [...list];
    }

    return [...list]..removeRange(0, list.length - max);
  }

  @override
  List<String> addSearchTerm(String term) {
    if (_history.contains(term)) {
      return putSearchTermFirst(term);
    }

    _history.add(term);
    _history = _removeUnnecessary(_history, maxHistoryLength);

    return filterSearchTerms('');
  }

  @override
  List<String> deleteSearchTerm(String term) {
    _history.remove(term);

    return filterSearchTerms('');
  }

  @override
  List<String> filterSearchTerms(String filter) {
    if (filter.isNotEmpty) {
      return _history.reversed.where((term) => term.contains(filter)).toList();
    }

    return _history.reversed.toList();
  }

  @override
  List<String> putSearchTermFirst(String term) {
    deleteSearchTerm(term);
    return addSearchTerm(term);
  }
}
