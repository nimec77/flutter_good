// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  SearchEventStarted started(String query) {
    return SearchEventStarted(
      query,
    );
  }

  SearchEventReceived textDataReceived(
      Either<TextDataFailure, List<TextData>> failureOrTextsData) {
    return SearchEventReceived(
      failureOrTextsData,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) started,
    required TResult Function(
            Either<TextDataFailure, List<TextData>> failureOrTextsData)
        textDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? started,
    TResult Function(
            Either<TextDataFailure, List<TextData>> failureOrTextsData)?
        textDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventStarted value) started,
    required TResult Function(SearchEventReceived value) textDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventStarted value)? started,
    TResult Function(SearchEventReceived value)? textDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class $SearchEventStartedCopyWith<$Res> {
  factory $SearchEventStartedCopyWith(
          SearchEventStarted value, $Res Function(SearchEventStarted) then) =
      _$SearchEventStartedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchEventStartedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchEventStartedCopyWith<$Res> {
  _$SearchEventStartedCopyWithImpl(
      SearchEventStarted _value, $Res Function(SearchEventStarted) _then)
      : super(_value, (v) => _then(v as SearchEventStarted));

  @override
  SearchEventStarted get _value => super._value as SearchEventStarted;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(SearchEventStarted(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventStarted implements SearchEventStarted {
  const _$SearchEventStarted(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.started(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchEventStarted &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $SearchEventStartedCopyWith<SearchEventStarted> get copyWith =>
      _$SearchEventStartedCopyWithImpl<SearchEventStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) started,
    required TResult Function(
            Either<TextDataFailure, List<TextData>> failureOrTextsData)
        textDataReceived,
  }) {
    return started(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? started,
    TResult Function(
            Either<TextDataFailure, List<TextData>> failureOrTextsData)?
        textDataReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventStarted value) started,
    required TResult Function(SearchEventReceived value) textDataReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventStarted value)? started,
    TResult Function(SearchEventReceived value)? textDataReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SearchEventStarted implements SearchEvent {
  const factory SearchEventStarted(String query) = _$SearchEventStarted;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchEventStartedCopyWith<SearchEventStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventReceivedCopyWith<$Res> {
  factory $SearchEventReceivedCopyWith(
          SearchEventReceived value, $Res Function(SearchEventReceived) then) =
      _$SearchEventReceivedCopyWithImpl<$Res>;
  $Res call({Either<TextDataFailure, List<TextData>> failureOrTextsData});
}

/// @nodoc
class _$SearchEventReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchEventReceivedCopyWith<$Res> {
  _$SearchEventReceivedCopyWithImpl(
      SearchEventReceived _value, $Res Function(SearchEventReceived) _then)
      : super(_value, (v) => _then(v as SearchEventReceived));

  @override
  SearchEventReceived get _value => super._value as SearchEventReceived;

  @override
  $Res call({
    Object? failureOrTextsData = freezed,
  }) {
    return _then(SearchEventReceived(
      failureOrTextsData == freezed
          ? _value.failureOrTextsData
          : failureOrTextsData // ignore: cast_nullable_to_non_nullable
              as Either<TextDataFailure, List<TextData>>,
    ));
  }
}

/// @nodoc

class _$SearchEventReceived implements SearchEventReceived {
  const _$SearchEventReceived(this.failureOrTextsData);

  @override
  final Either<TextDataFailure, List<TextData>> failureOrTextsData;

  @override
  String toString() {
    return 'SearchEvent.textDataReceived(failureOrTextsData: $failureOrTextsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchEventReceived &&
            (identical(other.failureOrTextsData, failureOrTextsData) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTextsData, failureOrTextsData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTextsData);

  @JsonKey(ignore: true)
  @override
  $SearchEventReceivedCopyWith<SearchEventReceived> get copyWith =>
      _$SearchEventReceivedCopyWithImpl<SearchEventReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) started,
    required TResult Function(
            Either<TextDataFailure, List<TextData>> failureOrTextsData)
        textDataReceived,
  }) {
    return textDataReceived(failureOrTextsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? started,
    TResult Function(
            Either<TextDataFailure, List<TextData>> failureOrTextsData)?
        textDataReceived,
    required TResult orElse(),
  }) {
    if (textDataReceived != null) {
      return textDataReceived(failureOrTextsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventStarted value) started,
    required TResult Function(SearchEventReceived value) textDataReceived,
  }) {
    return textDataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventStarted value)? started,
    TResult Function(SearchEventReceived value)? textDataReceived,
    required TResult orElse(),
  }) {
    if (textDataReceived != null) {
      return textDataReceived(this);
    }
    return orElse();
  }
}

abstract class SearchEventReceived implements SearchEvent {
  const factory SearchEventReceived(
          Either<TextDataFailure, List<TextData>> failureOrTextsData) =
      _$SearchEventReceived;

  Either<TextDataFailure, List<TextData>> get failureOrTextsData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchEventReceivedCopyWith<SearchEventReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  SearchStateInitial initial() {
    return const SearchStateInitial();
  }

  SearchStateInProgress searchInProgress() {
    return const SearchStateInProgress();
  }

  SearchStateSuccess searchSuccess(List<TextData> textsData) {
    return SearchStateSuccess(
      textsData,
    );
  }

  SearchStateFailure searchFailure(TextDataFailure textDataFailure) {
    return SearchStateFailure(
      textDataFailure,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(List<TextData> textsData) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(List<TextData> textsData)? searchSuccess,
    TResult Function(TextDataFailure textDataFailure)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateInitial value) initial,
    required TResult Function(SearchStateInProgress value) searchInProgress,
    required TResult Function(SearchStateSuccess value) searchSuccess,
    required TResult Function(SearchStateFailure value) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateInitial value)? initial,
    TResult Function(SearchStateInProgress value)? searchInProgress,
    TResult Function(SearchStateSuccess value)? searchSuccess,
    TResult Function(SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class $SearchStateInitialCopyWith<$Res> {
  factory $SearchStateInitialCopyWith(
          SearchStateInitial value, $Res Function(SearchStateInitial) then) =
      _$SearchStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateInitialCopyWith<$Res> {
  _$SearchStateInitialCopyWithImpl(
      SearchStateInitial _value, $Res Function(SearchStateInitial) _then)
      : super(_value, (v) => _then(v as SearchStateInitial));

  @override
  SearchStateInitial get _value => super._value as SearchStateInitial;
}

/// @nodoc

class _$SearchStateInitial implements SearchStateInitial {
  const _$SearchStateInitial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(List<TextData> textsData) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(List<TextData> textsData)? searchSuccess,
    TResult Function(TextDataFailure textDataFailure)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateInitial value) initial,
    required TResult Function(SearchStateInProgress value) searchInProgress,
    required TResult Function(SearchStateSuccess value) searchSuccess,
    required TResult Function(SearchStateFailure value) searchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateInitial value)? initial,
    TResult Function(SearchStateInProgress value)? searchInProgress,
    TResult Function(SearchStateSuccess value)? searchSuccess,
    TResult Function(SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchStateInitial implements SearchState {
  const factory SearchStateInitial() = _$SearchStateInitial;
}

/// @nodoc
abstract class $SearchStateInProgressCopyWith<$Res> {
  factory $SearchStateInProgressCopyWith(SearchStateInProgress value,
          $Res Function(SearchStateInProgress) then) =
      _$SearchStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateInProgressCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateInProgressCopyWith<$Res> {
  _$SearchStateInProgressCopyWithImpl(
      SearchStateInProgress _value, $Res Function(SearchStateInProgress) _then)
      : super(_value, (v) => _then(v as SearchStateInProgress));

  @override
  SearchStateInProgress get _value => super._value as SearchStateInProgress;
}

/// @nodoc

class _$SearchStateInProgress implements SearchStateInProgress {
  const _$SearchStateInProgress();

  @override
  String toString() {
    return 'SearchState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(List<TextData> textsData) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(List<TextData> textsData)? searchSuccess,
    TResult Function(TextDataFailure textDataFailure)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateInitial value) initial,
    required TResult Function(SearchStateInProgress value) searchInProgress,
    required TResult Function(SearchStateSuccess value) searchSuccess,
    required TResult Function(SearchStateFailure value) searchFailure,
  }) {
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateInitial value)? initial,
    TResult Function(SearchStateInProgress value)? searchInProgress,
    TResult Function(SearchStateSuccess value)? searchSuccess,
    TResult Function(SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class SearchStateInProgress implements SearchState {
  const factory SearchStateInProgress() = _$SearchStateInProgress;
}

/// @nodoc
abstract class $SearchStateSuccessCopyWith<$Res> {
  factory $SearchStateSuccessCopyWith(
          SearchStateSuccess value, $Res Function(SearchStateSuccess) then) =
      _$SearchStateSuccessCopyWithImpl<$Res>;
  $Res call({List<TextData> textsData});
}

/// @nodoc
class _$SearchStateSuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateSuccessCopyWith<$Res> {
  _$SearchStateSuccessCopyWithImpl(
      SearchStateSuccess _value, $Res Function(SearchStateSuccess) _then)
      : super(_value, (v) => _then(v as SearchStateSuccess));

  @override
  SearchStateSuccess get _value => super._value as SearchStateSuccess;

  @override
  $Res call({
    Object? textsData = freezed,
  }) {
    return _then(SearchStateSuccess(
      textsData == freezed
          ? _value.textsData
          : textsData // ignore: cast_nullable_to_non_nullable
              as List<TextData>,
    ));
  }
}

/// @nodoc

class _$SearchStateSuccess implements SearchStateSuccess {
  const _$SearchStateSuccess(this.textsData);

  @override
  final List<TextData> textsData;

  @override
  String toString() {
    return 'SearchState.searchSuccess(textsData: $textsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchStateSuccess &&
            (identical(other.textsData, textsData) ||
                const DeepCollectionEquality()
                    .equals(other.textsData, textsData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(textsData);

  @JsonKey(ignore: true)
  @override
  $SearchStateSuccessCopyWith<SearchStateSuccess> get copyWith =>
      _$SearchStateSuccessCopyWithImpl<SearchStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(List<TextData> textsData) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return searchSuccess(textsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(List<TextData> textsData)? searchSuccess,
    TResult Function(TextDataFailure textDataFailure)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(textsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateInitial value) initial,
    required TResult Function(SearchStateInProgress value) searchInProgress,
    required TResult Function(SearchStateSuccess value) searchSuccess,
    required TResult Function(SearchStateFailure value) searchFailure,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateInitial value)? initial,
    TResult Function(SearchStateInProgress value)? searchInProgress,
    TResult Function(SearchStateSuccess value)? searchSuccess,
    TResult Function(SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchStateSuccess implements SearchState {
  const factory SearchStateSuccess(List<TextData> textsData) =
      _$SearchStateSuccess;

  List<TextData> get textsData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateSuccessCopyWith<SearchStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateFailureCopyWith<$Res> {
  factory $SearchStateFailureCopyWith(
          SearchStateFailure value, $Res Function(SearchStateFailure) then) =
      _$SearchStateFailureCopyWithImpl<$Res>;
  $Res call({TextDataFailure textDataFailure});

  $TextDataFailureCopyWith<$Res> get textDataFailure;
}

/// @nodoc
class _$SearchStateFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateFailureCopyWith<$Res> {
  _$SearchStateFailureCopyWithImpl(
      SearchStateFailure _value, $Res Function(SearchStateFailure) _then)
      : super(_value, (v) => _then(v as SearchStateFailure));

  @override
  SearchStateFailure get _value => super._value as SearchStateFailure;

  @override
  $Res call({
    Object? textDataFailure = freezed,
  }) {
    return _then(SearchStateFailure(
      textDataFailure == freezed
          ? _value.textDataFailure
          : textDataFailure // ignore: cast_nullable_to_non_nullable
              as TextDataFailure,
    ));
  }

  @override
  $TextDataFailureCopyWith<$Res> get textDataFailure {
    return $TextDataFailureCopyWith<$Res>(_value.textDataFailure, (value) {
      return _then(_value.copyWith(textDataFailure: value));
    });
  }
}

/// @nodoc

class _$SearchStateFailure implements SearchStateFailure {
  const _$SearchStateFailure(this.textDataFailure);

  @override
  final TextDataFailure textDataFailure;

  @override
  String toString() {
    return 'SearchState.searchFailure(textDataFailure: $textDataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchStateFailure &&
            (identical(other.textDataFailure, textDataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.textDataFailure, textDataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(textDataFailure);

  @JsonKey(ignore: true)
  @override
  $SearchStateFailureCopyWith<SearchStateFailure> get copyWith =>
      _$SearchStateFailureCopyWithImpl<SearchStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(List<TextData> textsData) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return searchFailure(textDataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(List<TextData> textsData)? searchSuccess,
    TResult Function(TextDataFailure textDataFailure)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(textDataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStateInitial value) initial,
    required TResult Function(SearchStateInProgress value) searchInProgress,
    required TResult Function(SearchStateSuccess value) searchSuccess,
    required TResult Function(SearchStateFailure value) searchFailure,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStateInitial value)? initial,
    TResult Function(SearchStateInProgress value)? searchInProgress,
    TResult Function(SearchStateSuccess value)? searchSuccess,
    TResult Function(SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class SearchStateFailure implements SearchState {
  const factory SearchStateFailure(TextDataFailure textDataFailure) =
      _$SearchStateFailure;

  TextDataFailure get textDataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateFailureCopyWith<SearchStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
