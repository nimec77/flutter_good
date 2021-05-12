import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_good/search/search.dart';

void main() {
  final textRepository = ResoRepositoryImp();

  group('Test TextRepository', () {
    /** Данная реальзация сервиса возвращает случайное количество записей от 0 до 50
     * Поэтому инода тест может падать
     */
    test('should return a iterable of TextData', () async {
      final result = textRepository.search('Reco Coder');
      final streamQueue = StreamQueue<Either<TextDataFailure, Iterable<TextData>>>(result);
      final first = await streamQueue.next;
      first.fold(
        (_) => throw (AssertionError('Error getting TextData')),
        (textsData) => expect(textsData, []),
      );
      expect(await streamQueue.hasNext, true);
      final second = await streamQueue.next;
      second.fold(
        (_) => throw (AssertionError('Error getting TextData')),
        (textsData) {
          expect(textsData.length, 1);
          textsData.first.maybeMap(
            (value) {
              expect(value.text, startsWith('Reco Coder search result #1/'));
            },
            orElse: () => throw (AssertionError('Receive TextData error')),
          );
        },
      );
      await streamQueue.cancel();
    });
  });
}
