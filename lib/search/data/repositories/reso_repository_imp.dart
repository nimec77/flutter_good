import 'dart:io';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/domain/entities/text/text_data_failure.dart';
import 'package:flutter_good/search/use_cases/enums/error_types.dart';
import 'package:flutter_good/search/use_cases/ports/text_repository.dart';
import 'package:rxdart/rxdart.dart';

class ResoRepositoryImp implements TextRepository {
  final random = Random();

  @override
  Stream<Either<TextDataFailure, List<TextData>>> search(String query, {ErrorTypes errorTypes = ErrorTypes.noError}) {
    return _search$(query).map((textsData) {
      if (errorTypes == ErrorTypes.error) {
        return left<TextDataFailure, List<TextData>>(const TextDataFailure.error('Server is not available'));
      } else if (errorTypes == ErrorTypes.randomError && random.nextBool()) {
        return left<TextDataFailure, List<TextData>>(const TextDataFailure.error('Server is not available'));
      }
      return right<TextDataFailure, List<TextData>>(textsData);
    }).onErrorReturnWith((error, stackTrace) {
      if (error is HttpException) {
        return left(TextDataFailure.error(error.message));
      } else {
        return left(const TextDataFailure.unexpected());
      }
    });
  }

  Stream<List<TextData>> _search$(String query) async* {
    final result = <TextData>[];

    yield [];

    for (final item in _search(query)) {
      await Future.delayed(const Duration(milliseconds: 500));
      result.add(item);
      yield [...result];
    }
  }

  Iterable<TextData> _search(String query) {
    final length = random.nextInt(50);
    return List.generate(length, (index) => TextData('$query search result #${index + 1}/$length', DateTime.now()));
  }
}
