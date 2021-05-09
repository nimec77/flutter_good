import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/domain/entities/text/text_data_failure.dart';

abstract class TextRepository {
  Stream<Either<TextDataFailure, Iterable<TextData>>> searchText(String query);
}
