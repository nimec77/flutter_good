import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_good/search/search.dart';

void main() {
  final textRepository = TextRepositoryImp();

  group('Test TextRepository', () {
    test('should return a iterable of one TextData', () async {
      final result = textRepository.search('');
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
          textsData.first.maybeMap((value) {
            expect(value.text, 'Text 0');
          }, orElse: () => throw (AssertionError('Receive TextData error')));
        },
      );
      await streamQueue.cancel();
    });
  });
}
