import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.searchInProgress(''));

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
