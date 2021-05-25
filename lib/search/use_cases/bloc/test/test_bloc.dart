import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_good/search/use_cases/ports/test_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_bloc.freezed.dart';

part 'test_event.dart';

part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc(this.testRepository) : super(const TestState.initial());

  final TestRepository testRepository;

  StreamSubscription<List<int>>? _intsStreamSubscription;

  @override
  Future<void> close() async {
    await _intsStreamSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    yield* event.map(
      started: (_) async* {
        yield* _mapStartedEventToState();
      },
      intsReceived: (e) async* {
        yield* _mapIntsReceivedToState(e.ints);
      },
    );
  }

  Stream<TestState> _mapStartedEventToState() async* {
    yield const TestState.startInProgress();
    await _intsStreamSubscription?.cancel();
    _intsStreamSubscription = testRepository.start(42).listen((ints) {
      add(TestEvent.intsReceived(ints));
    });
  }

  Stream<TestState> _mapIntsReceivedToState(List<int> ints) async* {
    yield TestState.startSuccess(ints);
  }
}
