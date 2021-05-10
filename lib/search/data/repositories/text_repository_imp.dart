import 'dart:io';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/domain/entities/text/text_data_failure.dart';
import 'package:flutter_good/search/use_cases/ports/text_repository.dart';
import 'package:rxdart/rxdart.dart';

class TextRepositoryImp implements TextRepository {
  final list = List.generate(100, (index) => 'Text $index');
  final random = Random();

  @override
  Stream<Either<TextDataFailure, List<TextData>>> searchText(String query) {
    return _searchText$(query)
        .map((textsData) => random.nextBool()
            ? right<TextDataFailure, List<TextData>>(textsData)
            : left<TextDataFailure, List<TextData>>(const TextDataFailure.error('Server is not available')))
        .onErrorReturnWith((error, stackTrace) {
      if (error is HttpException) {
        return left(TextDataFailure.error(error.message));
      } else {
        return left(const TextDataFailure.unexpected());
      }
    });
  }

  Stream<List<TextData>> _searchText$(String query) async* {
    final result = <TextData>[];

    for (final item in _searchText(query)) {
      yield [...result];
      await Future.delayed(const Duration(seconds: 1));
      result.add(item);
    }
  }

  Iterable<TextData> _searchText(String query) {
    return list
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .map((e) => TextData(e, DateTime.now()));
  }
}
