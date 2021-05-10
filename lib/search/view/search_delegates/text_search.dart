import 'package:flutter/material.dart';

class TextSearch extends SearchDelegate {
  TextSearch();

  String prevQuery = '';
  String selectedResult = '';
  Set<String> recent = {};

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text(selectedResult, style: Theme.of(context).textTheme.headline3),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (prevQuery != query) {
      if (prevQuery.length >= query.length) {
        prevQuery = query;
      } else {
        prevQuery += query.substring(0, query.length - prevQuery.length);
        query = prevQuery;
      }
    }
    final suggestionList = [];
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index], style: Theme.of(context).textTheme.headline4),
          leading: query.isEmpty ? const Icon(Icons.access_time) : const SizedBox(),
          onTap: () {
            selectedResult = suggestionList[index];
            recent.add(selectedResult);
            showResults(context);
          },
        );
      },
    );
  }
}
