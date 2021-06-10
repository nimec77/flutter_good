import 'package:algolia/algolia.dart';
import 'package:flutter_good/search/domain/types.dart';
import 'package:flutter_good/search/use_cases/ports/providers/search_provider.dart';

class AlgoliaProvider implements SearchProvider {
  AlgoliaProvider(this.algolia);

  final Algolia algolia;

  @override
  Future<AlgoliaQuerySnapshot> search(String indexName, String query) async {
    final index = algolia.index(indexName);
    if (query.isEmpty) {
      return index.getObjects();
    }

    return index.query(query).getObjects();
  }

  @override
  AlgoliaQuerySnapshot snapshotFromJson(String index, Json json) =>
      AlgoliaQuerySnapshot.fromJson(algolia, index, json);
}
