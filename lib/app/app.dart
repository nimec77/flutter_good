// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_good/l10n/l10n.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/bloc/history/history_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      // supportedLocales: const [Locale('ru', '')],
      home: MultiBlocProvider(
        providers: [
          BlocProvider<SearchBloc>(
            create: (context) => SearchBloc(ResoRepositoryImp())..add(const SearchEvent.started('')),
          ),
          BlocProvider<HistoryBloc>(
            create: (context) => HistoryBloc(HistoryRepositoryImp()),
          ),
        ],
        child: SearchPage(),
      ),
    );
  }
}
