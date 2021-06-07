import 'package:flutter/material.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/view/widgets/search_list.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('SearchList', () {
    testWidgets('renders SearchList', (tester) async {
      await tester.pumpApp(const SearchList(textsData: []));
      expect(find.byType(SearchList), findsOneWidget);
    });

    testWidgets('render List', (tester) async {
      final textData = TextData('Test text', DateTime.now());
      final textsDataOrFails = [textData];

      await tester.pumpWithScaffold(SearchList(textsData: textsDataOrFails));
      expect(find.byType(ListTile), findsOneWidget);

      textsDataOrFails.first.maybeMap(
        (textData) {
          final textFinder = find.text(textData.text);
          expect(textFinder, findsOneWidget);
          final textWidget = tester.firstWidget(textFinder) as Text;
          expect(textWidget.data, textData.text);
          final dateFinder = find.text(textData.createData.toString());
          expect(dateFinder, findsOneWidget);
          final dateWidget = tester.firstWidget(dateFinder) as Text;
          expect(dateWidget.data, textData.createData.toString());
        },
        orElse: () => throw (AssertionError('Receive TextData error')),
      );
    });
  });
}
