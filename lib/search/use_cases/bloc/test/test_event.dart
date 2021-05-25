part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.started() = TestEventStarted;

  const factory TestEvent.intsReceived(List<int> ints) = TestEventIntsReceived;
}
