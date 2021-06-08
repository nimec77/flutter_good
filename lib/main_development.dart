// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_good/app/app.dart';
import 'package:flutter_good/app/app_bloc_observer.dart';
import 'package:flutter_good/search/data/providers/algolia_provider.dart';
import 'package:flutter_good/search/data/repositories/algolia_repository_imp.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/ports/history_repository.dart';
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
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory(),
      );
      runApp(App(container: createData()));
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

Map<dynamic, dynamic> createData() {
  return {
    TextRepository: AlgoliaRepositoryImp(AlgoliaProvider()),
    HistoryRepository: HistoryRepositoryImp(),
  };
}
