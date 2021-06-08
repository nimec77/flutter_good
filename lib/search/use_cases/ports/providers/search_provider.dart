import 'package:algolia/algolia.dart';

abstract class SearchProvider {
  Future<AlgoliaQuerySnapshot> search(String indexName, String query);
}