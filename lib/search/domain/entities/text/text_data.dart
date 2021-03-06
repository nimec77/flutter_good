import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_data.freezed.dart';

@freezed
class TextData with _$TextData {
  const factory TextData(String text, DateTime createData) = TextDataValue;

  const factory TextData.empty() = TextDataEmpty;
}
