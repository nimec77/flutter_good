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

  _SearchEventStarted started(String query) {
    return _SearchEventStarted(
      query,
    );
  }

  _SearchEventReceived textDataReceived(
      Either<TextDataFailure, Iterable<TextData>> failureOrTextsData) {
    return _SearchEventReceived(
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
            Either<TextDataFailure, Iterable<TextData>> failureOrTextsData)
        textDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? started,
    TResult Function(
            Either<TextDataFailure, Iterable<TextData>> failureOrTextsData)?
        textDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEventStarted value) started,
    required TResult Function(_SearchEventReceived value) textDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEventStarted value)? started,
    TResult Function(_SearchEventReceived value)? textDataReceived,
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
abstract class _$SearchEventStartedCopyWith<$Res> {
  factory _$SearchEventStartedCopyWith(
          _SearchEventStarted value, $Res Function(_SearchEventStarted) then) =
      __$SearchEventStartedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$SearchEventStartedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchEventStartedCopyWith<$Res> {
  __$SearchEventStartedCopyWithImpl(
      _SearchEventStarted _value, $Res Function(_SearchEventStarted) _then)
      : super(_value, (v) => _then(v as _SearchEventStarted));

  @override
  _SearchEventStarted get _value => super._value as _SearchEventStarted;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SearchEventStarted(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchEventStarted implements _SearchEventStarted {
  const _$_SearchEventStarted(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.started(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchEventStarted &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchEventStartedCopyWith<_SearchEventStarted> get copyWith =>
      __$SearchEventStartedCopyWithImpl<_SearchEventStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) started,
    required TResult Function(
            Either<TextDataFailure, Iterable<TextData>> failureOrTextsData)
        textDataReceived,
  }) {
    return started(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? started,
    TResult Function(
            Either<TextDataFailure, Iterable<TextData>> failureOrTextsData)?
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
    required TResult Function(_SearchEventStarted value) started,
    required TResult Function(_SearchEventReceived value) textDataReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEventStarted value)? started,
    TResult Function(_SearchEventReceived value)? textDataReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _SearchEventStarted implements SearchEvent {
  const factory _SearchEventStarted(String query) = _$_SearchEventStarted;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchEventStartedCopyWith<_SearchEventStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchEventReceivedCopyWith<$Res> {
  factory _$SearchEventReceivedCopyWith(_SearchEventReceived value,
          $Res Function(_SearchEventReceived) then) =
      __$SearchEventReceivedCopyWithImpl<$Res>;
  $Res call({Either<TextDataFailure, Iterable<TextData>> failureOrTextsData});
}

/// @nodoc
class __$SearchEventReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchEventReceivedCopyWith<$Res> {
  __$SearchEventReceivedCopyWithImpl(
      _SearchEventReceived _value, $Res Function(_SearchEventReceived) _then)
      : super(_value, (v) => _then(v as _SearchEventReceived));

  @override
  _SearchEventReceived get _value => super._value as _SearchEventReceived;

  @override
  $Res call({
    Object? failureOrTextsData = freezed,
  }) {
    return _then(_SearchEventReceived(
      failureOrTextsData == freezed
          ? _value.failureOrTextsData
          : failureOrTextsData // ignore: cast_nullable_to_non_nullable
              as Either<TextDataFailure, Iterable<TextData>>,
    ));
  }
}

/// @nodoc

class _$_SearchEventReceived implements _SearchEventReceived {
  const _$_SearchEventReceived(this.failureOrTextsData);

  @override
  final Either<TextDataFailure, Iterable<TextData>> failureOrTextsData;

  @override
  String toString() {
    return 'SearchEvent.textDataReceived(failureOrTextsData: $failureOrTextsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchEventReceived &&
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
  _$SearchEventReceivedCopyWith<_SearchEventReceived> get copyWith =>
      __$SearchEventReceivedCopyWithImpl<_SearchEventReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) started,
    required TResult Function(
            Either<TextDataFailure, Iterable<TextData>> failureOrTextsData)
        textDataReceived,
  }) {
    return textDataReceived(failureOrTextsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? started,
    TResult Function(
            Either<TextDataFailure, Iterable<TextData>> failureOrTextsData)?
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
    required TResult Function(_SearchEventStarted value) started,
    required TResult Function(_SearchEventReceived value) textDataReceived,
  }) {
    return textDataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEventStarted value)? started,
    TResult Function(_SearchEventReceived value)? textDataReceived,
    required TResult orElse(),
  }) {
    if (textDataReceived != null) {
      return textDataReceived(this);
    }
    return orElse();
  }
}

abstract class _SearchEventReceived implements SearchEvent {
  const factory _SearchEventReceived(
          Either<TextDataFailure, Iterable<TextData>> failureOrTextsData) =
      _$_SearchEventReceived;

  Either<TextDataFailure, Iterable<TextData>> get failureOrTextsData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchEventReceivedCopyWith<_SearchEventReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchStateInitial initial() {
    return const _SearchStateInitial();
  }

  _SearchStateInProgress searchInProgress() {
    return const _SearchStateInProgress();
  }

  _SearchStateSuccess searchSuccess(Iterable<TextData> texts) {
    return _SearchStateSuccess(
      texts,
    );
  }

  _SearchStateFailure searchFailure(TextDataFailure textDataFailure) {
    return _SearchStateFailure(
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
    required TResult Function(Iterable<TextData> texts) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(Iterable<TextData> texts)? searchSuccess,
    TResult Function(TextDataFailure textDataFailure)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
    required TResult Function(_SearchStateFailure value) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
    TResult Function(_SearchStateFailure value)? searchFailure,
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
abstract class _$SearchStateInitialCopyWith<$Res> {
  factory _$SearchStateInitialCopyWith(
          _SearchStateInitial value, $Res Function(_SearchStateInitial) then) =
      __$SearchStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStateInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateInitialCopyWith<$Res> {
  __$SearchStateInitialCopyWithImpl(
      _SearchStateInitial _value, $Res Function(_SearchStateInitial) _then)
      : super(_value, (v) => _then(v as _SearchStateInitial));

  @override
  _SearchStateInitial get _value => super._value as _SearchStateInitial;
}

/// @nodoc

class _$_SearchStateInitial implements _SearchStateInitial {
  const _$_SearchStateInitial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(Iterable<TextData> texts) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(Iterable<TextData> texts)? searchSuccess,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
    required TResult Function(_SearchStateFailure value) searchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
    TResult Function(_SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchStateInitial implements SearchState {
  const factory _SearchStateInitial() = _$_SearchStateInitial;
}

/// @nodoc
abstract class _$SearchStateInProgressCopyWith<$Res> {
  factory _$SearchStateInProgressCopyWith(_SearchStateInProgress value,
          $Res Function(_SearchStateInProgress) then) =
      __$SearchStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStateInProgressCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateInProgressCopyWith<$Res> {
  __$SearchStateInProgressCopyWithImpl(_SearchStateInProgress _value,
      $Res Function(_SearchStateInProgress) _then)
      : super(_value, (v) => _then(v as _SearchStateInProgress));

  @override
  _SearchStateInProgress get _value => super._value as _SearchStateInProgress;
}

/// @nodoc

class _$_SearchStateInProgress implements _SearchStateInProgress {
  const _$_SearchStateInProgress();

  @override
  String toString() {
    return 'SearchState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(Iterable<TextData> texts) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(Iterable<TextData> texts)? searchSuccess,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
    required TResult Function(_SearchStateFailure value) searchFailure,
  }) {
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
    TResult Function(_SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchStateInProgress implements SearchState {
  const factory _SearchStateInProgress() = _$_SearchStateInProgress;
}

/// @nodoc
abstract class _$SearchStateSuccessCopyWith<$Res> {
  factory _$SearchStateSuccessCopyWith(
          _SearchStateSuccess value, $Res Function(_SearchStateSuccess) then) =
      __$SearchStateSuccessCopyWithImpl<$Res>;
  $Res call({Iterable<TextData> texts});
}

/// @nodoc
class __$SearchStateSuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateSuccessCopyWith<$Res> {
  __$SearchStateSuccessCopyWithImpl(
      _SearchStateSuccess _value, $Res Function(_SearchStateSuccess) _then)
      : super(_value, (v) => _then(v as _SearchStateSuccess));

  @override
  _SearchStateSuccess get _value => super._value as _SearchStateSuccess;

  @override
  $Res call({
    Object? texts = freezed,
  }) {
    return _then(_SearchStateSuccess(
      texts == freezed
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as Iterable<TextData>,
    ));
  }
}

/// @nodoc

class _$_SearchStateSuccess implements _SearchStateSuccess {
  const _$_SearchStateSuccess(this.texts);

  @override
  final Iterable<TextData> texts;

  @override
  String toString() {
    return 'SearchState.searchSuccess(texts: $texts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateSuccess &&
            (identical(other.texts, texts) ||
                const DeepCollectionEquality().equals(other.texts, texts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(texts);

  @JsonKey(ignore: true)
  @override
  _$SearchStateSuccessCopyWith<_SearchStateSuccess> get copyWith =>
      __$SearchStateSuccessCopyWithImpl<_SearchStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(Iterable<TextData> texts) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return searchSuccess(texts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(Iterable<TextData> texts)? searchSuccess,
    TResult Function(TextDataFailure textDataFailure)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(texts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
    required TResult Function(_SearchStateFailure value) searchFailure,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
    TResult Function(_SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchStateSuccess implements SearchState {
  const factory _SearchStateSuccess(Iterable<TextData> texts) =
      _$_SearchStateSuccess;

  Iterable<TextData> get texts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchStateSuccessCopyWith<_SearchStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchStateFailureCopyWith<$Res> {
  factory _$SearchStateFailureCopyWith(
          _SearchStateFailure value, $Res Function(_SearchStateFailure) then) =
      __$SearchStateFailureCopyWithImpl<$Res>;
  $Res call({TextDataFailure textDataFailure});

  $TextDataFailureCopyWith<$Res> get textDataFailure;
}

/// @nodoc
class __$SearchStateFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateFailureCopyWith<$Res> {
  __$SearchStateFailureCopyWithImpl(
      _SearchStateFailure _value, $Res Function(_SearchStateFailure) _then)
      : super(_value, (v) => _then(v as _SearchStateFailure));

  @override
  _SearchStateFailure get _value => super._value as _SearchStateFailure;

  @override
  $Res call({
    Object? textDataFailure = freezed,
  }) {
    return _then(_SearchStateFailure(
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

class _$_SearchStateFailure implements _SearchStateFailure {
  const _$_SearchStateFailure(this.textDataFailure);

  @override
  final TextDataFailure textDataFailure;

  @override
  String toString() {
    return 'SearchState.searchFailure(textDataFailure: $textDataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateFailure &&
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
  _$SearchStateFailureCopyWith<_SearchStateFailure> get copyWith =>
      __$SearchStateFailureCopyWithImpl<_SearchStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(Iterable<TextData> texts) searchSuccess,
    required TResult Function(TextDataFailure textDataFailure) searchFailure,
  }) {
    return searchFailure(textDataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(Iterable<TextData> texts)? searchSuccess,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
    required TResult Function(_SearchStateFailure value) searchFailure,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
    TResult Function(_SearchStateFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchStateFailure implements SearchState {
  const factory _SearchStateFailure(TextDataFailure textDataFailure) =
      _$_SearchStateFailure;

  TextDataFailure get textDataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchStateFailureCopyWith<_SearchStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
