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
  final algoliaError = AlgoliaError.fromResponse({'message': 'Sever is not available'}, 503);
  final mockAlgolia = MockAlgolia();
  late final MockSearchProvider mockSearchProvider;
  late final MockCacheProvider mockCacheProvider;
  late final TextRepository algoliaRepository;
  late final Json jsonMap;
  late final AlgoliaQuerySnapshot resultSnapshot;
  late final List<String> texts;
  late final AlgoliaQuerySnapshot noHitsSnapshot;

  late StreamQueue<Either<TextDataFailure, Iterable<TextData>>> streamQueue;

  tearDown(() async {
    await streamQueue.cancel();
  });

  setUpAll(() async {
    mockSearchProvider = MockSearchProvider();
    mockCacheProvider = MockCacheProvider();
    algoliaRepository = AlgoliaRepositoryImp(mockSearchProvider, mockCacheProvider);
    final jsonString = await readFile('assets/search.json');
    jsonMap = json.decode(jsonString) as Json;
    resultSnapshot = AlgoliaQuerySnapshot.fromJson(mockAlgolia, kIndex, jsonMap);
    texts =
        resultSnapshot.hits.map((e) => '${e.data['firstName']} ${e.data['middleName']} ${e.data['lastName']}').toList();

    when(() => mockCacheProvider.write(any(), any())).thenAnswer((_) => Future.value());
    when(() => mockSearchProvider.snapshotFromJson(any(), any())).thenReturn(resultSnapshot);
  });

  group('search test', () {
    test('search successful', () async {
      when(() => mockCacheProvider.read(any())).thenReturn(jsonMap);
      when(() => mockSearchProvider.search(any(), any())).thenAnswer((_) async => resultSnapshot);

      final actual = algoliaRepository.search('query');
      streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(actual);
      if (!await streamQueue.hasNext) {
        throw AssertionError('There is no data');
      }
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

      if (!await streamQueue.hasNext) {
        throw AssertionError('There is no data');
      }
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
      if (await streamQueue.hasNext) {
        throw AssertionError('There should be no more data');
      }
      verify(() => mockSearchProvider.search(any(), any())).called(1);
      verify(() => mockCacheProvider.write(any(), any())).called(1);
    });

    test('search failure', () async {
      when(() => mockCacheProvider.read(any())).thenReturn(jsonMap);
      when(() => mockSearchProvider.search(any(), any())).thenThrow(algoliaError);

      final actual = algoliaRepository.search('query');
      streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(actual);
      if (!await streamQueue.hasNext) {
        throw AssertionError('There is no data');
      }
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

      if (!await streamQueue.hasNext) {
        throw AssertionError('There is no data');
      }
      final searchResult = await streamQueue.next;
      searchResult.fold(
        (failure) {
          failure.maybeMap(
            algoliaError: (textDataFailure) => expect(textDataFailure.error, algoliaError),
            orElse: () => throw (AssertionError('An error should be AlgoliaError returned')),
          );
          return null;
        },
        (_) => throw (AssertionError('An error should be returned')),
      );

      if (await streamQueue.hasNext) {
        throw AssertionError('There should be no more data');
      }

      verify(() => mockSearchProvider.search(any(), any())).called(1);
      verifyNever(() => mockCacheProvider.write(any(), any()));
    });

    test('cache empty, search successful', () async {
      when(() => mockCacheProvider.read(any())).thenReturn(emptyJson);
      when(() => mockSearchProvider.search(any(), any())).thenAnswer((_) async => resultSnapshot);

      final actual = algoliaRepository.search('query');
      streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(actual);
      if (!await streamQueue.hasNext) {
        throw AssertionError('There is no data');
      }
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
      if (await streamQueue.hasNext) {
        throw AssertionError('There should be no more data');
      }

      verify(() => mockCacheProvider.read(any())).called(1);
      verify(() => mockSearchProvider.search(any(), any())).called(1);
      verify(() => mockCacheProvider.write(any(), any())).called(1);
    });

    test('cache some, search empty', () async {
      when(() => mockCacheProvider.read(any())).thenReturn(jsonMap);
      when(() => mockSearchProvider.search(any(), any())).thenAnswer((_) async => resultSnapshot);

    });
  });
}
