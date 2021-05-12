import 'package:flutter_good/search/use_cases/ports/search_history_repository.dart';

class SearchHistoryRepositoryImp implements SearchHistoryRepository {
  SearchHistoryRepositoryImp({this.history = const [], this.maxHistoryLength = 5});

  final int maxHistoryLength;
  final List<String> history;

  @override
  List<String> addSearchTerm(String term) {
    if (history.contains(term)) {
      return putSearchTermFirst(term);
    }

    history.add(term);
    if (history.length > maxHistoryLength) {
      history.removeRange(0, history.length - maxHistoryLength);
    }

    return filterSearchTerms('');
  }

  @override
  List<String> deleteSearchTerm(String term) {
    history.remove(term);

    return filterSearchTerms('');
  }

  @override
  List<String> filterSearchTerms(String filter) {
    if (filter.isNotEmpty) {
      return history.reversed.where((term) => term.startsWith(filter)).toList();
    }

    return history.reversed.toList();
  }

  @override
  List<String> putSearchTermFirst(String term) {
    deleteSearchTerm(term);
    return addSearchTerm(term);
  }
}
