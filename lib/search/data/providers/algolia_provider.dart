import 'package:algolia/algolia.dart';
import 'package:flutter_good/search/use_cases/ports/providers/search_provider.dart';

class AlgoliaProvider implements SearchProvider {
  final _algolia = const Algolia.init(
    applicationId: '',
    apiKey: '',
  );

  @override
  Future<AlgoliaQuerySnapshot> search(String indexName, String query) async {
    final index = _algolia.index(indexName);
    if (query.isEmpty) {
      return index.getObjects();
    }

    return index.query(query).getObjects();
  }
}
