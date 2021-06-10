import 'dart:convert';

import 'package:algolia/algolia.dart';
import 'package:flutter_good/search/data/providers/algolia_provider.dart';
import 'package:flutter_good/search/domain/types.dart';
import 'package:flutter_good/search/use_cases/ports/providers/search_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

class MockAlgolia extends Mock implements Algolia {
  MockAlgolia(this.reference);

  final MockAlgoliaIndexReference reference;

  @override
  MockAlgoliaIndexReference index(String name) {
    return reference;
  }
}

class MockAlgoliaQuery extends Mock implements AlgoliaQuery {}

class MockAlgoliaIndexReference extends Mock implements AlgoliaIndexReference {}

void main() {
  const kIndex = 'users';
  late final MockAlgoliaIndexReference mockReference;
  late final MockAlgolia mockAlgolia;
  late final MockAlgoliaQuery mockQuery;
  late final AlgoliaQuerySnapshot resultSnapshot;
  late final SearchProvider searchProvider;

  setUpAll(() async {
    mockReference = MockAlgoliaIndexReference();
    mockAlgolia = MockAlgolia(mockReference);
    mockQuery = MockAlgoliaQuery();
    final jsonString = await readFile('assets/search.json');
    final jsonMap = json.decode(jsonString) as Json;
    resultSnapshot = AlgoliaQuerySnapshot.fromJson(mockAlgolia, kIndex, jsonMap);
    when(mockQuery.getObjects).thenAnswer((_) async => resultSnapshot);
    when(mockReference.getObjects).thenAnswer((_) async => resultSnapshot);
    when(() => mockReference.query(any())).thenReturn(mockQuery);
    searchProvider = AlgoliaProvider(mockAlgolia);
  });

  group('search test', () {
    test('search on empty query', () async {
      final actual = await searchProvider.search(kIndex, '');

      expect(actual, resultSnapshot);
    });

    test('search on some query', () async {
      final actual = await searchProvider.search(kIndex, 'query');

      expect(actual, resultSnapshot);
    });
  });
}
