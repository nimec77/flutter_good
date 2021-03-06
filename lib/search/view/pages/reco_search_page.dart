import 'package:flutter/material.dart';
import 'package:flutter_good/l10n/l10n.dart';
import 'package:flutter_good/search/view/widgets/search_history_reco.dart';
import 'package:flutter_good/search/view/widgets/search_results_list_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class RecoSearchPage extends StatefulWidget {
  const RecoSearchPage({Key? key}) : super(key: key);

  @override
  _RecoSearchPageState createState() => _RecoSearchPageState();
}

class _RecoSearchPageState extends State<RecoSearchPage> {
  static const historyLength = 5;
  final _searchHistory = [
    'fuchsia',
    'flutter',
    'widgets',
    'resocoder',
  ];
  late final FloatingSearchBarController controller;
  List<String> filteredSearchHistory = [];
  String selectedTerm = '';

  @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController();
    filteredSearchHistory = filterSearchTerms('');
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.searchAppBarTitle),
      ),
      body: FloatingSearchBar(
        actions: [
          FloatingSearchBarAction.searchToClear(),
        ],
        controller: controller,
        transition: CircularFloatingSearchBarTransition(),
        physics: const BouncingScrollPhysics(),
        title: Text(
          selectedTerm.isEmpty ? 'The Search App' : selectedTerm,
          style: Theme.of(context).textTheme.headline6,
        ),
        hint: 'Search and find out...',
        body: FloatingSearchBarScrollNotifier(
          child: SearchResultListView(
            searchTerm: selectedTerm,
          ),
        ),
        onQueryChanged: (query) {
          debugPrint('changed:$query');
          setState(() {
            filteredSearchHistory = filterSearchTerms(query);
          });
        },
        onSubmitted: (query) {
          debugPrint('submitted:$query');
          setState(() {
            addSearchTerm(query);
            selectedTerm = query;
          });
          controller.close();
        },
        builder: (BuildContext context, Animation<double> transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 4,
              child: SearchHistoryReco(
                history: filteredSearchHistory,
                query: controller.query,
                onAddTap: () {
                  setState(() {
                    addSearchTerm(controller.query);
                    selectedTerm = controller.query;
                  });
                  controller.close();
                },
                onSelectTap: (term) {
                  setState(() {
                    putSearchTermFirst(term);
                    selectedTerm = term;
                  });
                  controller.close();
                },
                onPressed: (term) {
                  setState(() {
                    deleteSearchTerm(term);
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }

  List<String> filterSearchTerms(String filter) {
    if (filter.isNotEmpty) {
      return _searchHistory.reversed.where((term) => term.startsWith(filter)).toList();
    }

    return _searchHistory.reversed.toList();
  }

  void addSearchTerm(String term) {
    if (_searchHistory.contains(term)) {
      putSearchTermFirst(term);
      return;
    }

    _searchHistory.add(term);

    if (_searchHistory.length > historyLength) {
      _searchHistory.removeRange(0, _searchHistory.length - historyLength);
    }

    filteredSearchHistory = filterSearchTerms('');
  }

  void deleteSearchTerm(String term) {
    _searchHistory.removeWhere((element) => element == term);
    filteredSearchHistory = filterSearchTerms('');
  }

  void putSearchTermFirst(String term) {
    deleteSearchTerm(term);
    addSearchTerm(term);
  }
}
