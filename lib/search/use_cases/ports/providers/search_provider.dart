import 'package:algolia/algolia.dart';
import 'package:flutter_good/search/domain/types.dart';

abstract class SearchProvider {
  Future<AlgoliaQuerySnapshot> search(String indexName, String query);

  AlgoliaQuerySnapshot snapshotFromJson(String index, Json json);
}