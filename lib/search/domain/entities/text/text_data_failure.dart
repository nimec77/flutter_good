import 'package:algolia/algolia.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_data_failure.freezed.dart';

@freezed
class TextDataFailure with _$TextDataFailure {
  const factory TextDataFailure.unexpected() = TextDataFailureUnexpected;

  const factory TextDataFailure.error(final String message) = TextDataFailureError;

  const factory TextDataFailure.algoliaError(final AlgoliaError error) = TextDataAlgoliaError;
}