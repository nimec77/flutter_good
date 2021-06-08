import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path_provider/path_provider.dart';

import 'helpers/helpers.dart';

class MockSearchBloc extends Mock implements SearchBloc {}

void main() {
  const length = 5;
  late Widget app;
  final searchResult = List.generate(length, (index) => TextData('Text $index', DateTime.now()));

  final mockSearchBloc = MockSearchBloc();

  setUpAll(() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );
    whenListen(
      mockSearchBloc,
      Stream.fromIterable(<SearchState>[]),
    );
    when(mockSearchBloc.close).thenAnswer((_) => Future.value());
    when(() => mockSearchBloc.state).thenAnswer((_) => SearchState.searchSuccess(searchResult));
  });

  setUp(() {
    app = MultiBlocProvider(
      providers: [
        BlocProvider<SearchBloc>(
          create: (context) => mockSearchBloc,
        ),
        BlocProvider<HistoryBloc>(
          create: (context) => HistoryBloc(HistoryRepositoryImp()),
        ),
      ],
      child: const SearchPage(),
    );
  });

  group('App', () {
    testWidgets('render App', (tester) async {
      await tester.pumpApp(app);
      expect(find.byType(SearchPage), findsOneWidget);
    });

    testWidgets('render list on successful search', (tester) async {
      await tester.pumpApp(app);
      final listTilesFinder = find.byType(ListTile);
      for (var i = 0; i < length; i++) {
        final listTileFinder = listTilesFinder.at(i);
        searchResult[i].maybeMap(
          (textData) {
            final listTileWidget = tester.firstWidget(listTileFinder) as ListTile;
            final titleTextWidget = listTileWidget.title as Text;
            expect(titleTextWidget.data, textData.text);
            final subtitleTextWidget = listTileWidget.subtitle as Text;
            expect(subtitleTextWidget.data, textData.createData.toString());
          },
          orElse: () => throw (AssertionError('Receive TextData error')),
        );
      }
    });
  });
}
