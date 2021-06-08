import 'package:algolia/algolia.dart';
import 'package:flutter_good/search/use_cases/ports/providers/search_provider.dart';

class AlgoliaProvider implements SearchProvider {
  final _algolia = const Algolia.init(
    applicationId: 'MTQYRQ4OSF',
    apiKey: '35ed6ab8df9ca4057ecd4e3c9eb81c6c',
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
