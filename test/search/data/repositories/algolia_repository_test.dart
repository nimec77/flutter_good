import 'dart:convert';

import 'package:algolia/algolia.dart';
import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/data/repositories/algolia_repository_imp.dart';
import 'package:flutter_good/search/domain/types.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/ports/providers/cache_provider.dart';
import 'package:flutter_good/search/use_cases/ports/providers/search_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

class MockAlgolia extends Mock implements Algolia {}

class MockSearchProvider extends Mock implements SearchProvider {}

class MockCacheProvider extends Mock implements CacheProvider {}

void main() {
  const kIndex = 'users';
  late final MockSearchProvider mockSearchProvider;
  late final MockCacheProvider mockCacheProvider;
  late final TextRepository algoliaRepository;
  late final Json jsonMap;
  late final AlgoliaQuerySnapshot resultSnapshot;
  late final List<TextData> restultTextsData;

  setUpAll(() async {
    mockSearchProvider = MockSearchProvider();
    mockCacheProvider = MockCacheProvider();
    algoliaRepository = AlgoliaRepositoryImp(mockSearchProvider, mockCacheProvider);
    final jsonString = await readFile('assets/search.json');
    jsonMap = json.decode(jsonString) as Json;
    resultSnapshot = AlgoliaQuerySnapshot.fromJson(MockAlgolia(), kIndex, jsonMap);
    restultTextsData = resultSnapshot.hits
        .map((e) => TextData('${e.data['firstName']} ${e.data['middleName']} ${e.data['lastName']}', DateTime.now()))
        .toList();
    when(() => mockCacheProvider.read(any())).thenReturn(jsonMap);
    when(() => mockSearchProvider.search(any(), any())).thenAnswer((_) async => resultSnapshot);
  });

  group('search test', () {

    test('search some', () async {
      final actual = algoliaRepository.search('query');
      final streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(actual);
      final cachedResult = await streamQueue.next;
      cachedResult.fold(
        (_) => throw (AssertionError('Error getting TextDat')),
        (textsData) => expect(textsData, restultTextsData),
      );
    });
  });
}
