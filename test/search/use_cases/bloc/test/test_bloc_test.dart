import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_good/search/use_cases/bloc/test/test_bloc.dart';
import 'package:flutter_good/search/use_cases/ports/test_repository.dart';
import 'package:flutter_test/flutter_test.dart';

class MockTestRepository extends Mock implements TestRepository {}

void main() {
  group('TestBloc tests', () {
    final mockTestRepository = MockTestRepository();
    final intsResult = [1, 2, 3];
    final streamInts = Stream.value(intsResult);

    test('Initial state is initial', () {
      expect(TestBloc(mockTestRepository).state, equals(const TestState.initial()));
    });

    blocTest<TestBloc, TestState>(
      'emits [TestState.startSuccess] when event estEvent.intsReceived successful',
      build: () => TestBloc(mockTestRepository),
      act: (testBloc) => testBloc.add(TestEvent.intsReceived(intsResult)),
      expect: () => [TestState.startSuccess(intsResult)],
    );

    blocTest<TestBloc, TestState>(
      'emits [TestState.startInProgress, TestState.startSuccess] when successful',
      build: () {
        when(() => mockTestRepository.start(any())).thenAnswer((_) => streamInts);

        return TestBloc(mockTestRepository);
      },
      act: (testBloc) => testBloc.add(const TestEvent.started()),
      expect: () => [
        const TestState.startInProgress(),
        TestState.startSuccess(intsResult),
      ],
      verify: (_) {
        verify(() => mockTestRepository.start(any())).called(1);
      }
    );
  });
}
