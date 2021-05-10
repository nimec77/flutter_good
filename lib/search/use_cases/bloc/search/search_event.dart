part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started(String query) = _SearchEventStarted;

  const factory SearchEvent.textDataReceived(
      Either<TextDataFailure, List<TextData>> failureOrTextsData) = _SearchEventReceived;
}
