import 'dart:io';

import 'package:flutter_good/search/domain/entities/text_data.dart';
import 'package:flutter_good/search/domain/ports/text_repository.dart';

class TextRepositoryImp implements TextRepository {
  final list = List.generate(100, (index) => 'Text $index');

  @override
  Iterable<TextData> searchText(String query) {
    return list
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .map((e) => TextData(e, DateTime.now()));
  }

  @override
  Stream<Iterable<TextData>> searchText$(String query) async* {
    final result = <TextData>[];
    yield result;
    for (final item in searchText(query)) {
      sleep(const Duration(seconds: 1));
      result.add(item);
      yield result;
    }
  }
}
