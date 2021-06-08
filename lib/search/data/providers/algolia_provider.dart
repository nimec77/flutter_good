import 'package:algolia/algolia.dart';

class AlgoliaProvider {
  final _algolia = const Algolia.init(
    applicationId: 'MTQYRQ4OSF',
    apiKey: '35ed6ab8df9ca4057ecd4e3c9eb81c6c',
  );

  Future<AlgoliaQuerySnapshot> search(String indexName, String query) async {
    final index = _algolia.index(indexName);
    if (query.isEmpty) {
      return index.getObjects();
    }

    return index.query(query).getObjects();
  }
}
