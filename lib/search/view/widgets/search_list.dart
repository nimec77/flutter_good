import 'package:flutter/material.dart';
import 'package:flutter_good/search/search.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchList extends StatelessWidget {
  SearchList({Key? key, required this.textsData}) : super(key: key);

  final List<TextData> textsData;

  @override
  Widget build(BuildContext context) {
    final barWidget = FloatingSearchBar.of(context)?.widget;

    return ListView.builder(
      padding: EdgeInsets.only(top: (barWidget?.height ?? 0) + (barWidget?.margins?.vertical ?? 0)),
      shrinkWrap: true,
      itemCount: textsData.length,
      itemBuilder: (context, index) {
        final textData = textsData[index];
        return textData.maybeMap(
          (value) {
            return ListTile(
              title: Text(value.text),
              subtitle: Text(value.createData.toString()),
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
