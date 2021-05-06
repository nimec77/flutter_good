import 'package:flutter_good/search/domain/entities/text_data.dart';

abstract class TextRepository {
  Iterable<TextData> searchText(String query);

  Stream<Iterable<TextData>> searchText$(String query);
}
