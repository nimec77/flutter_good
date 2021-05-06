import 'package:flutter_good/search/data/repositories/text_repository_imp.dart';
import 'package:flutter_good/search/domain/entities/text_data.dart';
import 'package:flutter_good/search/domain/ports/text_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class TextRepositoryMock extends Mock implements TextRepository {}

void main() {
  final textRepositoryMock = TextRepositoryMock();
  final textRepository = TextRepositoryImp();

  group('Test TextRepository', () {
    test('should return a iterable of TextData', () {
      final testList = [TextData('Text 0', DateTime.now())];
      when(() => textRepositoryMock.searchText(any())).thenReturn(testList);
      expect(textRepositoryMock.searchText('query'), equals(testList));
    });

    test('should return a iterable of 100 TextData', () {
      expect(textRepository.searchText('').length, equals(100));
    });

    test('should return a iterable of one TextData', () async {
      final result = await textRepository.searchText$('').first;
      expect(result.length, equals(1));
    });
  });
}
