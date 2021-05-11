import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key, required this.searchTerm}) : super(key: key);

  final String searchTerm;

  @override
  Widget build(BuildContext context) {
    final barWidget = FloatingSearchBar.of(context)?.widget;

    if (searchTerm.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.search, size: 64),
            Text('Start searching', style: Theme.of(context).textTheme.headline5),
          ],
        ),
      );
    }

    return ListView(
      padding: EdgeInsets.only(top: (barWidget?.height ?? 0) + (barWidget?.margins?.vertical ?? 0)),
      children: List.generate(
        50,
        (index) => ListTile(
          title: Text('$searchTerm search result'),
          subtitle: Text(index.toString()),
        ),
      ),
    );
  }
}
