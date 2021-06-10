import 'dart:async';
import 'dart:convert';

import 'package:flutter_good/search/domain/types.dart';
import 'package:flutter_good/search/use_cases/ports/providers/cache_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class CacheProviderImp implements CacheProvider {
  CacheProviderImp(this.hydratedStorage);

  final HydratedStorage hydratedStorage;

  @override
  Future<void> clear() async => hydratedStorage.clear();

  @override
  Future<void> delete(String key) async => hydratedStorage.delete(key);

  @override
  Json read(String key) {
    final cachedValue = hydratedStorage.read(key);

    if (cachedValue == null || (cachedValue as String).isEmpty) {
      return emptyJson;
    }

    return json.decode(cachedValue) as Json;
  }

  @override
  Future<void> write(String key, Json jsonMap) async => hydratedStorage.write(key, json.encode(jsonMap));
}
