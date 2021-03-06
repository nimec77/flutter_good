abstract class HistoryRepository {
  void initialHistory(List<String> history);

  List<String> filterSearchTerms(String filter);

  List<String> addSearchTerm(String term);

  List<String> deleteSearchTerm(String term);

  List<String> putSearchTermFirst(String term);
}