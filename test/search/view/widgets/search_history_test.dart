import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_good/l10n/l10n.dart';
import 'package:flutter_good/search/view/widgets/search_history.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('SearchHistory', () {
    testWidgets('render SearchHistory', (tester) async {
      await tester.pumpWithScaffold(const SearchHistory(history: [], query: ''));
      expect(find.byType(SearchHistory), findsOneWidget);
    });

    testWidgets('render "Start search" on empty SearchHistory', (tester) async {
      late final BuildContext buildContext;
      final widget = Builder(builder: (context) {
        buildContext = context;
        return const SearchHistory(history: [], query: '');
      });
      await tester.pumpWithScaffold(widget);
      final l10n = buildContext.l10n;

      final searchTextFinder = find.text(l10n.searchAppStartSearch);
      expect(searchTextFinder, findsOneWidget);
      final searchTextWidget = tester.firstWidget(searchTextFinder) as Text;
      expect(searchTextWidget.data, l10n.searchAppStartSearch);
    });

    testWidgets('render query if history is empty on SearchHistory', (tester) async {
      const query = '123';
      await tester.pumpWithScaffold(const SearchHistory(history: [], query: query));

      final queryListTileFinder = find.byType(ListTile);
      expect(queryListTileFinder, findsOneWidget);
      final queryListTileWidget = tester.firstWidget(queryListTileFinder) as ListTile;
      final queryIcon = queryListTileWidget.leading! as Icon;
      expect(queryIcon.icon, Icons.search);
      final queryText = queryListTileWidget.title! as Text;
      expect(queryText.data, query);
    });

    testWidgets('render history on SearchHistory', (tester) async {
      const history = ['123'];
      await tester.pumpWithScaffold(const SearchHistory(history: history, query: ''));

      final historyListTileFinder = find.byType(ListTile);
      expect(historyListTileFinder, findsOneWidget);
      final historyListTileWidget = tester.firstWidget(historyListTileFinder) as ListTile;
      final historyText = historyListTileWidget.title! as Text;
      expect(historyText.data, history.first);
      expect(historyListTileWidget.trailing.runtimeType, IconButton);
      final clearIconButton = historyListTileWidget.trailing! as IconButton;
      expect((clearIconButton.icon as Icon).icon, Icons.clear);
    });
  });
}
