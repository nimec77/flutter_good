import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/data/repositories/text_repository_imp.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/use_cases/ports/text_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class TextRepositoryMock extends Mock implements TextRepository {}

void main() {
  final textRepositoryMock = TextRepositoryMock();
  final textRepository = TextRepositoryImp();

  group('Test TextRepository', () {
    test('should return a iterable of TextData', () {
      final testList = [TextData('Text 0', DateTime.now())];
      when(() => textRepositoryMock.searchText(any())).thenAnswer((_) => Right(Stream.value(testList)));

      final result = textRepositoryMock.searchText('query');

      verify(() => textRepositoryMock.searchText('query'));
      expect(result.isRight(), true);
      result.fold(
        (l) => null,
        (r) => expect(r, emitsInOrder([testList])),
      );
    });

    test('should return a iterable of one TextData', () async {
      await textRepository.searchText('').fold(
        (l) => throw (AssertionError('Left side is unacceptable')),
        (result) async {
          final streamQueue = StreamQueue<Iterable<TextData>>(result);
          final first = await streamQueue.next;
          print(first);
        },
      );
    });
  });
}
