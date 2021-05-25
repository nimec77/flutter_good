part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState.initial() = TestStateInitial;

  const factory TestState.startInProgress() = TestStateStartInProgress;

  const factory TestState.startSuccess(List<int> ints) = TestStateStartSuccess;
}