import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/domain/entities/text/text_data_failure.dart';
import 'package:flutter_good/search/use_cases/ports/text_repository.dart';

class TextRepositoryImp implements TextRepository {
  final list = List.generate(100, (index) => 'Text $index');

  @override
  Either<TextDataFailure, Stream<Iterable<TextData>>> searchText(String query) {
    try {
      return right(_searchText$(query));
    } on HttpException catch (e) {
      return left(TextDataFailure.error(e.message));
    } catch (e) {
      return left(const TextDataFailure.unexpected());
    }
  }

  Stream<Iterable<TextData>> _searchText$(String query) async* {
    final result = <TextData>[];

    for (final item in _searchText(query)) {
      await Future.delayed(const Duration(seconds: 1));
      result.add(item);
      yield result;
    }
  }

  Iterable<TextData> _searchText(String query) {
    return list
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .map((e) => TextData(e, DateTime.now()));
  }

  // @override
  // Either<TextDataFailure, Stream<int>> test() {
  //   return right(Stream.value(1));
  // }
}
