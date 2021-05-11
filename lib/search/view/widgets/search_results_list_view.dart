import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key, required this.searchTerm}) : super(key: key);

  final String searchTerm;

  @override
  Widget build(BuildContext context) {
    if (searchTerm.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.search, size: 64),
            Text('Start searching', style: Theme.of(context).textTheme.headline5),
            const TextField(),
          ],
        ),
      );
    }

    return ListView(
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
