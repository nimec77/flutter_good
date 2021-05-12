import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_good/l10n/l10n.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/view/widgets/progress_bar.dart';
import 'package:flutter_good/search/view/widgets/search_list.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final FloatingSearchBarController controller;

  @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController();
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
        onQueryChanged: (query) {
          debugPrint('changed:$query');
        },
        onSubmitted: (query) {
          debugPrint('submitted:$query');
          context.read<SearchBloc>().add(SearchEvent.started(query));
          controller.close();
        },
        body: FloatingSearchBarScrollNotifier(
          child: BlocConsumer<SearchBloc, SearchState>(
            listenWhen: (previous, current) => current.maybeWhen(
              searchFailure: (_) => true,
              orElse: () => false,
            ),
            listener: (context, state) {
              state.maybeWhen(
                searchFailure: showSnackBar,
                orElse: () {},
              );
            },
            buildWhen: (previous, current) => current.maybeWhen(
              initial: () => true,
              searchInProgress: () => true,
              searchSuccess: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) => state.maybeWhen(
              searchSuccess: (textsData) => SearchList(textsData: textsData),
              orElse: () => const ProgressBar(),
            ),
          ),
        ),
        builder: (context, transition) {
          return Container();
        },
      ),
    );
  }

  void showSnackBar(TextDataFailure failure) {
    final l10n = context.l10n;

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
              onPressed: () => controller.dismiss(),
            ),
            icon: const Icon(Icons.error, color: Colors.red),
            message: Text(
              failure.when(unexpected: () => l10n.searchAppBarUnknownError, error: (message) => message),
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
