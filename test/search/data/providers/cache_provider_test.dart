import 'package:flutter_good/search/data/providers/cache_provider_imp.dart';
import 'package:flutter_good/search/domain/types.dart';
import 'package:flutter_good/search/use_cases/ports/providers/cache_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../../../helpers/helpers.dart';

void main() {
  late final CacheProvider cacheProvider;
  late final String key;
  late final Json testJsonMap;

  setUpAll(() async {
    key = getRandomString();
    testJsonMap = getRandomJsonMap();
    final hydratedStorage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );
    cacheProvider = CacheProviderImp(hydratedStorage);
  });

  group('RWD test', () {
    test('read and write empty map', () async {
      await cacheProvider.write(key, emptyJson);
      final actual = cacheProvider.read(key);

      expect(actual, emptyJson);
    });

    test('read and write random map', () async {
      await cacheProvider.write(key, testJsonMap);
      final actual = cacheProvider.read(key);

      expect(actual, testJsonMap);
    });

    test('read and delete', () async {
      await cacheProvider.write(key, testJsonMap);
      await cacheProvider.delete(key);
      final actual = cacheProvider.read(key);

      expect(actual, emptyJson);
    });
  });
}
