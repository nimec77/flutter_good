import 'package:flutter/material.dart';

typedef OnHistoryPressed = void Function(String query);

class SearchHistory extends StatelessWidget {
  const SearchHistory({
    Key? key,
    required this.history,
    required this.query,
    this.onAddTap,
    this.onSelectTap,
    this.onPressed,
  }) : super(key: key);

  final List<String> history;
  final String query;
  final VoidCallback? onAddTap;
  final OnHistoryPressed? onSelectTap;
  final OnHistoryPressed? onPressed;

  @override
  Widget build(BuildContext context) {
    if (history.isEmpty && query.isEmpty) {
      return Container(
        height: 56,
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          'Start searching',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.caption,
        ),
      );
    } else if (history.isEmpty) {
      return ListTile(
        title: Text(query),
        leading: const Icon(Icons.search),
        onTap: onAddTap,
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: history
          .map((term) => ListTile(
                title: Text(term, maxLines: 1, overflow: TextOverflow.ellipsis),
                leading: const Icon(Icons.history),
                trailing: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: onPressed != null ? () => onPressed!(term) : null,
                ),
                onTap: onSelectTap != null ? () => onSelectTap!(term) : null,
              ))
          .toList(),
    );
  }
}
