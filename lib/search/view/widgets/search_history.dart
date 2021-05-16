import 'package:flutter/material.dart';
import 'package:flutter_good/l10n/l10n.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory({
    Key? key,
    required this.history,
    required this.query,
    this.onAdd,
    this.onSelect,
    this.onDelete,
  }) : super(key: key);

  final List<String> history;
  final String query;
  final VoidCallback? onAdd;
  final ValueChanged? onSelect;
  final ValueChanged? onDelete;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (history.isEmpty && query.isEmpty) {
      return Container(
        height: 56,
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          l10n.searchAppStartSearch,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.caption,
        ),
      );
    } else if (history.isEmpty) {
      return ListTile(
        title: Text(query),
        leading: const Icon(Icons.search),
        onTap: onAdd,
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: history
          .map((term) => ListTile(
                title: Text(term, maxLines: 1, overflow: TextOverflow.ellipsis),
                trailing: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => onDelete?.call(term),
                ),
                onTap: () => onSelect?.call(term),
              ))
          .toList(),
    );
  }
}
