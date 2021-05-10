import 'package:flutter/material.dart';
import 'package:flutter_good/search/search.dart';

class SearchList extends StatelessWidget {
  SearchList({Key? key, required this.textsData}) : super(key: key);

  final List<TextData> textsData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: textsData.length,
      itemBuilder: (context, index) {
        final textData = textsData[index];
        return textData.maybeMap(
          (value) {
            return Row(
              children: [
                Text(value.text, textAlign: TextAlign.center, style: theme.textTheme.headline4),
                Text(value.createData.toString(), textAlign: TextAlign.center, style: theme.textTheme.headline4),
              ],
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
