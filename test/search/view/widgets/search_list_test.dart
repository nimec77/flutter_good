import 'package:flutter/material.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/view/widgets/search_list.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('SearchList', () {
    testWidgets('renders SearchList', (tester) async {
      await tester.pumpApp(SearchList(textsData: []));
      expect(find.byType(SearchList), findsOneWidget);
    });

    testWidgets('render List', (tester) async {
      final textsDataOrFails = [
        TextData('Test text', DateTime.now()),
      ];

      await tester.pumpApp(SearchList(textsData: textsDataOrFails));
      expect(find.byType(ListTile), findsOneWidget);

      textsDataOrFails.first.maybeMap(
            (textData) {
          final text = find.text(textData.text);
          expect(text, findsOneWidget);
          final date = find.text(textData.createData.toString());
          expect(date, findsOneWidget);
        },
        orElse: () => throw (AssertionError('Receive TextData error')),
      );
    });
  });
}
