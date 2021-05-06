import 'package:flutter/material.dart';
import 'package:flutter_good/l10n/l10n.dart';
import 'package:flutter_good/search/view/search_delegates/text_search.dart';
import 'package:flutter_good/search/view/widgets/search_list.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final list = List.generate(100, (index) => 'Text $index');

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: TextSearch(list));
            },
            icon: const Icon(Icons.search),
          ),
        ],
        centerTitle: true,
        title: Text(l10n.searchAppBarTitle),
      ),
      body: SearchList(list: list),
    );
  }
}
