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
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchStateInProgress searchInProgress(String query) {
    return _SearchStateInProgress(
      query,
    );
  }

  _SearchStateSuccess searchSuccess(UnmodifiableListView<TextData> texts) {
    return _SearchStateSuccess(
      texts,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchInProgress,
    required TResult Function(UnmodifiableListView<TextData> texts)
        searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchInProgress,
    TResult Function(UnmodifiableListView<TextData> texts)? searchSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
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
abstract class _$SearchStateInProgressCopyWith<$Res> {
  factory _$SearchStateInProgressCopyWith(_SearchStateInProgress value,
          $Res Function(_SearchStateInProgress) then) =
      __$SearchStateInProgressCopyWithImpl<$Res>;
  $Res call({String query});
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

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SearchStateInProgress(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStateInProgress implements _SearchStateInProgress {
  const _$_SearchStateInProgress(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchState.searchInProgress(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateInProgress &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchStateInProgressCopyWith<_SearchStateInProgress> get copyWith =>
      __$SearchStateInProgressCopyWithImpl<_SearchStateInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchInProgress,
    required TResult Function(UnmodifiableListView<TextData> texts)
        searchSuccess,
  }) {
    return searchInProgress(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchInProgress,
    TResult Function(UnmodifiableListView<TextData> texts)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
  }) {
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchStateInProgress implements SearchState {
  const factory _SearchStateInProgress(String query) = _$_SearchStateInProgress;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchStateInProgressCopyWith<_SearchStateInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchStateSuccessCopyWith<$Res> {
  factory _$SearchStateSuccessCopyWith(
          _SearchStateSuccess value, $Res Function(_SearchStateSuccess) then) =
      __$SearchStateSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<TextData> texts});
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
              as UnmodifiableListView<TextData>,
    ));
  }
}

/// @nodoc

class _$_SearchStateSuccess implements _SearchStateSuccess {
  const _$_SearchStateSuccess(this.texts);

  @override
  final UnmodifiableListView<TextData> texts;

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
    required TResult Function(String query) searchInProgress,
    required TResult Function(UnmodifiableListView<TextData> texts)
        searchSuccess,
  }) {
    return searchSuccess(texts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchInProgress,
    TResult Function(UnmodifiableListView<TextData> texts)? searchSuccess,
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
    required TResult Function(_SearchStateInProgress value) searchInProgress,
    required TResult Function(_SearchStateSuccess value) searchSuccess,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInProgress value)? searchInProgress,
    TResult Function(_SearchStateSuccess value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchStateSuccess implements SearchState {
  const factory _SearchStateSuccess(UnmodifiableListView<TextData> texts) =
      _$_SearchStateSuccess;

  UnmodifiableListView<TextData> get texts =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchStateSuccessCopyWith<_SearchStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
