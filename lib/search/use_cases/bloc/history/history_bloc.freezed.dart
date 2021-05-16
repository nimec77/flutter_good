// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryEventTearOff {
  const _$HistoryEventTearOff();

  HistoryEventAdded added(String term) {
    return HistoryEventAdded(
      term,
    );
  }

  HistoryEventDeleted deleted(String term) {
    return HistoryEventDeleted(
      term,
    );
  }

  HistoryEventSelected selected(String term) {
    return HistoryEventSelected(
      term,
    );
  }

  HistoryEventChanded changed(String filter) {
    return HistoryEventChanded(
      filter,
    );
  }
}

/// @nodoc
const $HistoryEvent = _$HistoryEventTearOff();

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) added,
    required TResult Function(String term) deleted,
    required TResult Function(String term) selected,
    required TResult Function(String filter) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? added,
    TResult Function(String term)? deleted,
    TResult Function(String term)? selected,
    TResult Function(String filter)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryEventAdded value) added,
    required TResult Function(HistoryEventDeleted value) deleted,
    required TResult Function(HistoryEventSelected value) selected,
    required TResult Function(HistoryEventChanded value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryEventAdded value)? added,
    TResult Function(HistoryEventDeleted value)? deleted,
    TResult Function(HistoryEventSelected value)? selected,
    TResult Function(HistoryEventChanded value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res> implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  final HistoryEvent _value;
  // ignore: unused_field
  final $Res Function(HistoryEvent) _then;
}

/// @nodoc
abstract class $HistoryEventAddedCopyWith<$Res> {
  factory $HistoryEventAddedCopyWith(
          HistoryEventAdded value, $Res Function(HistoryEventAdded) then) =
      _$HistoryEventAddedCopyWithImpl<$Res>;
  $Res call({String term});
}

/// @nodoc
class _$HistoryEventAddedCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res>
    implements $HistoryEventAddedCopyWith<$Res> {
  _$HistoryEventAddedCopyWithImpl(
      HistoryEventAdded _value, $Res Function(HistoryEventAdded) _then)
      : super(_value, (v) => _then(v as HistoryEventAdded));

  @override
  HistoryEventAdded get _value => super._value as HistoryEventAdded;

  @override
  $Res call({
    Object? term = freezed,
  }) {
    return _then(HistoryEventAdded(
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryEventAdded implements HistoryEventAdded {
  const _$HistoryEventAdded(this.term);

  @override
  final String term;

  @override
  String toString() {
    return 'HistoryEvent.added(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoryEventAdded &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @JsonKey(ignore: true)
  @override
  $HistoryEventAddedCopyWith<HistoryEventAdded> get copyWith =>
      _$HistoryEventAddedCopyWithImpl<HistoryEventAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) added,
    required TResult Function(String term) deleted,
    required TResult Function(String term) selected,
    required TResult Function(String filter) changed,
  }) {
    return added(term);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? added,
    TResult Function(String term)? deleted,
    TResult Function(String term)? selected,
    TResult Function(String filter)? changed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryEventAdded value) added,
    required TResult Function(HistoryEventDeleted value) deleted,
    required TResult Function(HistoryEventSelected value) selected,
    required TResult Function(HistoryEventChanded value) changed,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryEventAdded value)? added,
    TResult Function(HistoryEventDeleted value)? deleted,
    TResult Function(HistoryEventSelected value)? selected,
    TResult Function(HistoryEventChanded value)? changed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class HistoryEventAdded implements HistoryEvent {
  const factory HistoryEventAdded(String term) = _$HistoryEventAdded;

  String get term => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryEventAddedCopyWith<HistoryEventAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventDeletedCopyWith<$Res> {
  factory $HistoryEventDeletedCopyWith(
          HistoryEventDeleted value, $Res Function(HistoryEventDeleted) then) =
      _$HistoryEventDeletedCopyWithImpl<$Res>;
  $Res call({String term});
}

/// @nodoc
class _$HistoryEventDeletedCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res>
    implements $HistoryEventDeletedCopyWith<$Res> {
  _$HistoryEventDeletedCopyWithImpl(
      HistoryEventDeleted _value, $Res Function(HistoryEventDeleted) _then)
      : super(_value, (v) => _then(v as HistoryEventDeleted));

  @override
  HistoryEventDeleted get _value => super._value as HistoryEventDeleted;

  @override
  $Res call({
    Object? term = freezed,
  }) {
    return _then(HistoryEventDeleted(
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryEventDeleted implements HistoryEventDeleted {
  const _$HistoryEventDeleted(this.term);

  @override
  final String term;

  @override
  String toString() {
    return 'HistoryEvent.deleted(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoryEventDeleted &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @JsonKey(ignore: true)
  @override
  $HistoryEventDeletedCopyWith<HistoryEventDeleted> get copyWith =>
      _$HistoryEventDeletedCopyWithImpl<HistoryEventDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) added,
    required TResult Function(String term) deleted,
    required TResult Function(String term) selected,
    required TResult Function(String filter) changed,
  }) {
    return deleted(term);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? added,
    TResult Function(String term)? deleted,
    TResult Function(String term)? selected,
    TResult Function(String filter)? changed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryEventAdded value) added,
    required TResult Function(HistoryEventDeleted value) deleted,
    required TResult Function(HistoryEventSelected value) selected,
    required TResult Function(HistoryEventChanded value) changed,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryEventAdded value)? added,
    TResult Function(HistoryEventDeleted value)? deleted,
    TResult Function(HistoryEventSelected value)? selected,
    TResult Function(HistoryEventChanded value)? changed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class HistoryEventDeleted implements HistoryEvent {
  const factory HistoryEventDeleted(String term) = _$HistoryEventDeleted;

  String get term => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryEventDeletedCopyWith<HistoryEventDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventSelectedCopyWith<$Res> {
  factory $HistoryEventSelectedCopyWith(HistoryEventSelected value,
          $Res Function(HistoryEventSelected) then) =
      _$HistoryEventSelectedCopyWithImpl<$Res>;
  $Res call({String term});
}

/// @nodoc
class _$HistoryEventSelectedCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res>
    implements $HistoryEventSelectedCopyWith<$Res> {
  _$HistoryEventSelectedCopyWithImpl(
      HistoryEventSelected _value, $Res Function(HistoryEventSelected) _then)
      : super(_value, (v) => _then(v as HistoryEventSelected));

  @override
  HistoryEventSelected get _value => super._value as HistoryEventSelected;

  @override
  $Res call({
    Object? term = freezed,
  }) {
    return _then(HistoryEventSelected(
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryEventSelected implements HistoryEventSelected {
  const _$HistoryEventSelected(this.term);

  @override
  final String term;

  @override
  String toString() {
    return 'HistoryEvent.selected(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoryEventSelected &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @JsonKey(ignore: true)
  @override
  $HistoryEventSelectedCopyWith<HistoryEventSelected> get copyWith =>
      _$HistoryEventSelectedCopyWithImpl<HistoryEventSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) added,
    required TResult Function(String term) deleted,
    required TResult Function(String term) selected,
    required TResult Function(String filter) changed,
  }) {
    return selected(term);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? added,
    TResult Function(String term)? deleted,
    TResult Function(String term)? selected,
    TResult Function(String filter)? changed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryEventAdded value) added,
    required TResult Function(HistoryEventDeleted value) deleted,
    required TResult Function(HistoryEventSelected value) selected,
    required TResult Function(HistoryEventChanded value) changed,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryEventAdded value)? added,
    TResult Function(HistoryEventDeleted value)? deleted,
    TResult Function(HistoryEventSelected value)? selected,
    TResult Function(HistoryEventChanded value)? changed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class HistoryEventSelected implements HistoryEvent {
  const factory HistoryEventSelected(String term) = _$HistoryEventSelected;

  String get term => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryEventSelectedCopyWith<HistoryEventSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventChandedCopyWith<$Res> {
  factory $HistoryEventChandedCopyWith(
          HistoryEventChanded value, $Res Function(HistoryEventChanded) then) =
      _$HistoryEventChandedCopyWithImpl<$Res>;
  $Res call({String filter});
}

/// @nodoc
class _$HistoryEventChandedCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res>
    implements $HistoryEventChandedCopyWith<$Res> {
  _$HistoryEventChandedCopyWithImpl(
      HistoryEventChanded _value, $Res Function(HistoryEventChanded) _then)
      : super(_value, (v) => _then(v as HistoryEventChanded));

  @override
  HistoryEventChanded get _value => super._value as HistoryEventChanded;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(HistoryEventChanded(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryEventChanded implements HistoryEventChanded {
  const _$HistoryEventChanded(this.filter);

  @override
  final String filter;

  @override
  String toString() {
    return 'HistoryEvent.changed(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoryEventChanded &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  $HistoryEventChandedCopyWith<HistoryEventChanded> get copyWith =>
      _$HistoryEventChandedCopyWithImpl<HistoryEventChanded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) added,
    required TResult Function(String term) deleted,
    required TResult Function(String term) selected,
    required TResult Function(String filter) changed,
  }) {
    return changed(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? added,
    TResult Function(String term)? deleted,
    TResult Function(String term)? selected,
    TResult Function(String filter)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryEventAdded value) added,
    required TResult Function(HistoryEventDeleted value) deleted,
    required TResult Function(HistoryEventSelected value) selected,
    required TResult Function(HistoryEventChanded value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryEventAdded value)? added,
    TResult Function(HistoryEventDeleted value)? deleted,
    TResult Function(HistoryEventSelected value)? selected,
    TResult Function(HistoryEventChanded value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class HistoryEventChanded implements HistoryEvent {
  const factory HistoryEventChanded(String filter) = _$HistoryEventChanded;

  String get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryEventChandedCopyWith<HistoryEventChanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  HistoryStateInitail initial() {
    return const HistoryStateInitail();
  }

  HistoryStateTermsFiltered termsFiltered(
      {required String term, required List<String> history}) {
    return HistoryStateTermsFiltered(
      term: term,
      history: history,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String term, List<String> history) termsFiltered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String term, List<String> history)? termsFiltered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryStateInitail value) initial,
    required TResult Function(HistoryStateTermsFiltered value) termsFiltered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryStateInitail value)? initial,
    TResult Function(HistoryStateTermsFiltered value)? termsFiltered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;
}

/// @nodoc
abstract class $HistoryStateInitailCopyWith<$Res> {
  factory $HistoryStateInitailCopyWith(
          HistoryStateInitail value, $Res Function(HistoryStateInitail) then) =
      _$HistoryStateInitailCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryStateInitailCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryStateInitailCopyWith<$Res> {
  _$HistoryStateInitailCopyWithImpl(
      HistoryStateInitail _value, $Res Function(HistoryStateInitail) _then)
      : super(_value, (v) => _then(v as HistoryStateInitail));

  @override
  HistoryStateInitail get _value => super._value as HistoryStateInitail;
}

/// @nodoc

class _$HistoryStateInitail implements HistoryStateInitail {
  const _$HistoryStateInitail();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HistoryStateInitail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String term, List<String> history) termsFiltered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String term, List<String> history)? termsFiltered,
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
    required TResult Function(HistoryStateInitail value) initial,
    required TResult Function(HistoryStateTermsFiltered value) termsFiltered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryStateInitail value)? initial,
    TResult Function(HistoryStateTermsFiltered value)? termsFiltered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoryStateInitail implements HistoryState {
  const factory HistoryStateInitail() = _$HistoryStateInitail;
}

/// @nodoc
abstract class $HistoryStateTermsFilteredCopyWith<$Res> {
  factory $HistoryStateTermsFilteredCopyWith(HistoryStateTermsFiltered value,
          $Res Function(HistoryStateTermsFiltered) then) =
      _$HistoryStateTermsFilteredCopyWithImpl<$Res>;
  $Res call({String term, List<String> history});
}

/// @nodoc
class _$HistoryStateTermsFilteredCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryStateTermsFilteredCopyWith<$Res> {
  _$HistoryStateTermsFilteredCopyWithImpl(HistoryStateTermsFiltered _value,
      $Res Function(HistoryStateTermsFiltered) _then)
      : super(_value, (v) => _then(v as HistoryStateTermsFiltered));

  @override
  HistoryStateTermsFiltered get _value =>
      super._value as HistoryStateTermsFiltered;

  @override
  $Res call({
    Object? term = freezed,
    Object? history = freezed,
  }) {
    return _then(HistoryStateTermsFiltered(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$HistoryStateTermsFiltered implements HistoryStateTermsFiltered {
  const _$HistoryStateTermsFiltered(
      {required this.term, required this.history});

  @override
  final String term;
  @override
  final List<String> history;

  @override
  String toString() {
    return 'HistoryState.termsFiltered(term: $term, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoryStateTermsFiltered &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(term) ^
      const DeepCollectionEquality().hash(history);

  @JsonKey(ignore: true)
  @override
  $HistoryStateTermsFilteredCopyWith<HistoryStateTermsFiltered> get copyWith =>
      _$HistoryStateTermsFilteredCopyWithImpl<HistoryStateTermsFiltered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String term, List<String> history) termsFiltered,
  }) {
    return termsFiltered(term, history);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String term, List<String> history)? termsFiltered,
    required TResult orElse(),
  }) {
    if (termsFiltered != null) {
      return termsFiltered(term, history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryStateInitail value) initial,
    required TResult Function(HistoryStateTermsFiltered value) termsFiltered,
  }) {
    return termsFiltered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryStateInitail value)? initial,
    TResult Function(HistoryStateTermsFiltered value)? termsFiltered,
    required TResult orElse(),
  }) {
    if (termsFiltered != null) {
      return termsFiltered(this);
    }
    return orElse();
  }
}

abstract class HistoryStateTermsFiltered implements HistoryState {
  const factory HistoryStateTermsFiltered(
      {required String term,
      required List<String> history}) = _$HistoryStateTermsFiltered;

  String get term => throw _privateConstructorUsedError;
  List<String> get history => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryStateTermsFilteredCopyWith<HistoryStateTermsFiltered> get copyWith =>
      throw _privateConstructorUsedError;
}
