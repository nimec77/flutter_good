import 'package:flutter/material.dart';

class SearchList extends StatelessWidget {
  SearchList({Key? key, required this.list}) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return Text(item, textAlign: TextAlign.center, style: theme.textTheme.headline4);
      },
    );
  }
}
