import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/domain/entities/text/text_data_failure.dart';
import 'package:flutter_good/search/use_cases/enums/error_types.dart';

abstract class TextRepository {
  Stream<Either<TextDataFailure, List<TextData>>> search(String query, {ErrorTypes errorTypes = ErrorTypes.noError});
}
