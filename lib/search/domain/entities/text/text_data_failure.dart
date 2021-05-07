import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_data_failure.freezed.dart';

@freezed
class TextDataFailure with _$TextDataFailure {
  const factory TextDataFailure.unexpected() = _TextDataFailureUnexpected;

  const factory TextDataFailure.error(final String message) = _TextDataFailureError;
}