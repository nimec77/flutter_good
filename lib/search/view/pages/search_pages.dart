import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_good/l10n/l10n.dart';
import 'package:flutter_good/search/view/search_delegates/text_search.dart';
import 'package:flutter_good/search/view/widgets/progress_bar.dart';
import 'package:flutter_good/search/view/widgets/search_list.dart';

import '../../search.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: TextSearch());
            },
            icon: const Icon(Icons.search),
          ),
        ],
        centerTitle: true,
        title: Text(l10n.searchAppBarTitle),
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          debugPrint(state.toString());
          return state.map(
            initial: (_) => const ProgressBar(),
            searchInProgress: (_) => const ProgressBar(),
            searchSuccess: (result) => SearchList(textsData: result.textsData),
            searchFailure: (_) => Container(),
          );
        },
      ),
    );
  }
}
