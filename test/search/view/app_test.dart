import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockTextRepository extends Mock implements TextRepository {}

void main() {
  const length = 5;
  late final TextRepository textRepository;
  late Widget app;
  late List<TextData> searchResult;
  late Stream<Either<TextDataFailure, List<TextData>>> searchStreamResult;
  // late TextDataFailure searchFailure;
  // late Stream<Either<TextDataFailure, List<TextData>>> searchStreamFailure;

  setUpAll(() {
    registerFallbackValue<ErrorTypes>(ErrorTypes.noError);
    textRepository = MockTextRepository();
  });

  setUp(() {
    searchResult = List.generate(length, (index) => TextData('Text $index', DateTime.now()));
    searchStreamResult = Stream<Either<TextDataFailure, List<TextData>>>.value(right(searchResult));
    // searchFailure = const TextDataFailure.error('Test error');
    // searchStreamFailure = Stream<Either<TextDataFailure, List<TextData>>>.value(left(searchFailure));
    app = MultiBlocProvider(
      providers: [
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(textRepository)..add(const SearchEvent.started('')),
        ),
        BlocProvider<HistoryBloc>(
          create: (context) => HistoryBloc(HistoryRepositoryImp()),
        ),
      ],
      child: SearchPage(),
    );
  });

  group('App', () {
    testWidgets('render App', (tester) async {
      when(() => textRepository.search(any(), errorTypes: any(named: 'errorTypes')))
          .thenAnswer((_) => searchStreamResult);

      await tester.pumpApp(app);
      expect(find.byType(SearchPage), findsOneWidget);
    });

    testWidgets('render list on successful search', (tester) async {
      when(() => textRepository.search(any(), errorTypes: any(named: 'errorTypes')))
          .thenAnswer((_) => searchStreamResult);

      await tester.pumpApp(app);
      await tester.pumpAndSettle(const Duration(milliseconds: length * 500));
      final listTilesFinder = find.byType(ListTile);
      expect(listTilesFinder, findsNWidgets(length));
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
