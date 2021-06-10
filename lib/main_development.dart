// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:algolia/algolia.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_good/app/app.dart';
import 'package:flutter_good/app/app_bloc_observer.dart';
import 'package:flutter_good/search/data/providers/algolia_provider.dart';
import 'package:flutter_good/search/data/providers/cache_provider_imp.dart';
import 'package:flutter_good/search/data/repositories/algolia_repository_imp.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/ports/repositories/history_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final hydratedStorage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory(),
      );
      HydratedBloc.storage = hydratedStorage;
      runApp(App(container: await createData(hydratedStorage)));
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

Future<Map<dynamic, dynamic>> createData(HydratedStorage hydratedStorage) async {
  final configString = await rootBundle.loadString('assets/config.json');
  final config = json.decode(configString) as Json;
  final algolia = Algolia.init(
    applicationId: config['applicationId'],
    apiKey: config['apiKey'],
  );
  return {
    TextRepository: AlgoliaRepositoryImp(
      AlgoliaProvider(algolia),
      CacheProviderImp(hydratedStorage),
    ),
    HistoryRepository: HistoryRepositoryImp(),
  };
}
