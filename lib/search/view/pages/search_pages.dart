import 'package:flash/flash.dart';
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
      body: BlocConsumer<SearchBloc, SearchState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            searchFailure: (_) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.maybeWhen(
            searchFailure: (failure) {
              showFlash(
                context: context,
                duration: const Duration(seconds: 2),
                builder: (context, controller) {
                  return Flash.bar(
                    controller: controller,
                    backgroundColor: Colors.black87,
                    margin: const EdgeInsets.all(8),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: FlashBar(
                      primaryAction: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          controller.dismiss();
                        },
                      ),
                      icon: const Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                      message: Text(
                        failure.when(error: (message) => message, unexpected: () => 'Unknown Error'),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                      ),
                    ),
                  );
                },
              );
            },
            orElse: () {},
          );
        },
        buildWhen: (previous, current) {
          return current.maybeWhen(
            initial: () => true,
            searchInProgress: () => true,
            searchSuccess: (_) => true,
            orElse: () => false,
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            searchSuccess: (textsData) => SearchList(textsData: textsData),
            orElse: () => const ProgressBar(),
          );
        },
      ),
    );
  }
}
