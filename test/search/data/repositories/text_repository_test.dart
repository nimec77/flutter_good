import 'dart:math';

import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/enums/error_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  StreamQueue<Either<TextDataFailure, Iterable<TextData>>>? streamQueue;

  tearDown(() async {
    if (streamQueue != null) {
      await streamQueue?.cancel();
      streamQueue = null;
    }
  });

  group('Test TextRepository', () {
    /** Данная реальзация сервиса возвращает случайное количество записей от 0 до 50
     * Поэтому инода тест может падать
     */
    test('should return a iterable of TextData length 7', () async {
      final textRepository = ResoRepositoryImp(Random(42));
      final textsLength = 7;
      final expectData = List.generate(textsLength, (index) => 'Reco Coder search result #${index + 1}/$textsLength');

      final result = textRepository.search('Reco Coder');
      streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(result);

      final first = await streamQueue!.next;
      first.fold(
        (_) => throw (AssertionError('Error getting TextData')),
        (textsData) => expect(textsData, []),
      );
      var count = 0;
      while (await streamQueue!.hasNext) {
        final textsDataOrFailure = await streamQueue!.next;
        count++;
        textsDataOrFailure.fold(
          (_) => throw (AssertionError('Error getting TextData')),
          (textsData) {
            expect(textsData.length, count);
            final actualData = textsData.map((e) =>
                e.maybeMap((value) => value.text, orElse: () => throw (AssertionError('Receive TextData error'))));
            expect(actualData, expectData.take(count));
          },
        );
      }
    });

    test('should return an error', () async {
      final textRepository = ResoRepositoryImp(Random(42));
      final result = textRepository.search('query', errorTypes: ErrorTypes.error);

      final streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(result);

      final first = await streamQueue.next;
      first.fold(
            (error) => expect(error, const TextDataFailure.error('Server is not available')),
            (_) => throw AssertionError('Data received instead of error'),
      );
    });

    test('Pseudo random test with data and errors', () async {
      final textRepository = ResoRepositoryImp(Random(4));
      final result = textRepository.search('Reco Coder', errorTypes: ErrorTypes.randomError);
      streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(result);

      var count = 0;
      while (await streamQueue!.hasNext) {
        final textsDataOrFailure = await streamQueue!.next;
        textsDataOrFailure.fold(
              (error) {
            if (count == 1) {
              throw (AssertionError('Error getting TextData'));
            } else {
              expect(error, const TextDataFailure.error('Server is not available'));
            }
          },
              (textsData) {
            if (count != 1) {
              throw (AssertionError('Data received instead of error'));
            }
            final actualData = textsData.map(
                  (e) => e.maybeMap(
                    (value) => value.text,
                orElse: () => throw AssertionError('Receive TextData error'),
              ),
            );
            expect(actualData, ['Reco Coder search result #$count/5']);
          },
        );
        count++;
      }
    });

  });
}
