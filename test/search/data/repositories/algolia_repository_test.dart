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
  late final List<String> texts;
  // late final List<TextData> resultTextsData;

  setUpAll(() async {
    mockSearchProvider = MockSearchProvider();
    mockCacheProvider = MockCacheProvider();
    algoliaRepository = AlgoliaRepositoryImp(mockSearchProvider, mockCacheProvider);
    final jsonString = await readFile('assets/search.json');
    jsonMap = json.decode(jsonString) as Json;
    resultSnapshot = AlgoliaQuerySnapshot.fromJson(MockAlgolia(), kIndex, jsonMap);
    texts =
        resultSnapshot.hits.map((e) => '${e.data['firstName']} ${e.data['middleName']} ${e.data['lastName']}').toList();
    // resultTextsData = texts.map((e) => TextData(e, DateTime.now())).toList();
  });

  group('search test', () {
    test('search some successful', () async {
      when(() => mockCacheProvider.read(any())).thenReturn(jsonMap);
      when(() => mockCacheProvider.write(any(), any())).thenAnswer((_) => Future.value());
      when(() => mockSearchProvider.search(any(), any())).thenAnswer((_) async => resultSnapshot);
      when(() => mockSearchProvider.snapshotFromJson(any(), any())).thenReturn(resultSnapshot);

      final actual = algoliaRepository.search('query');
      final streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(actual);
      final cachedResult = await streamQueue.next;
      cachedResult.fold(
        (_) => throw (AssertionError('Error getting TextDat')),
        (textsData) {
          expect(textsData.length, texts.length);
          final actualTexts = textsData.map(
              (e) => e.maybeMap((value) => value.text, orElse: () => throw (AssertionError('Receive TextData error'))));
          expect(actualTexts, texts);
        },
      );
      verify(() => mockCacheProvider.read(any())).called(1);
      verify(() => mockSearchProvider.snapshotFromJson(any(), any())).called(1);

      final searchResult = await streamQueue.next;
      searchResult.fold(
        (_) => throw (AssertionError('Error getting TextDat')),
        (textsData) {
          expect(textsData.length, texts.length);
          final actualTexts = textsData.map(
              (e) => e.maybeMap((value) => value.text, orElse: () => throw (AssertionError('Receive TextData error'))));
          expect(actualTexts, texts);
        },
      );
      verify(() => mockSearchProvider.search(any(), any())).called(1);
      verify(() => mockCacheProvider.write(any(), any())).called(1);
    });
  });
}
