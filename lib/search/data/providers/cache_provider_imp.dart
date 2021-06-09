import 'dart:async';

import 'package:flutter_good/search/domain/types.dart';
import 'package:flutter_good/search/use_cases/ports/providers/cache_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class CacheProviderImp implements CacheProvider {
  CacheProviderImp(this.hydratedStorage);

  final HydratedStorage hydratedStorage;

  final emptyJson = <String, dynamic>{};

  @override
  Future<void> clear() async => hydratedStorage.clear();

  @override
  Future<void> delete(String key) async => hydratedStorage.delete(key);

  @override
  Json read(String key) => hydratedStorage.read(key) ?? emptyJson;

  @override
  Future<void> write(String key, Json json) async => hydratedStorage.write(key, json);
}
