import 'package:flutter_good/search/domain/types.dart';

abstract class CacheProvider {
  Json read(String key);

  Future<void> write(String key, Json json);

  Future<void> delete(String key);

  Future<void> clear();
}
