import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/domain/entities/text/text_data.dart';
import 'package:flutter_good/search/domain/entities/text/text_data_failure.dart';
import 'package:flutter_good/search/use_cases/ports/text_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this.textRepository) : super(const SearchState.initial());

  final TextRepository textRepository;

  StreamSubscription<Either<TextDataFailure, List<TextData>>>? _textDataStreamSubscription;

  @override
  Future<void> close() async {
    await _textDataStreamSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield* _mapStartedEventToState(e.query);
      },
      textDataReceived: (e) async* {
        yield* _mapTextDataReceivedEventToState(e.failureOrTextsData);
      },
    );
  }

  Stream<SearchState> _mapStartedEventToState(String query) async* {
    yield const SearchState.searchInProgress();
    await _textDataStreamSubscription?.cancel();
    _textDataStreamSubscription = textRepository.searchText(query).listen((failureOrTextsData) {
      add(SearchEvent.textDataReceived(failureOrTextsData));
    });
  }

  Stream<SearchState> _mapTextDataReceivedEventToState(
      Either<TextDataFailure, List<TextData>> failureOrTextsData) async* {
    yield failureOrTextsData.fold(
      (failure) => SearchState.searchFailure(failure),
      (textsData) => SearchState.searchSuccess(textsData),
    );
  }
}
