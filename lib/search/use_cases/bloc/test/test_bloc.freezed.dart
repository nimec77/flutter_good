// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TestEventTearOff {
  const _$TestEventTearOff();

  TestEventStarted started() {
    return const TestEventStarted();
  }

  TestEventIntsReceived intsReceived(List<int> ints) {
    return TestEventIntsReceived(
      ints,
    );
  }
}

/// @nodoc
const $TestEvent = _$TestEventTearOff();

/// @nodoc
mixin _$TestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<int> ints) intsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<int> ints)? intsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestEventStarted value) started,
    required TResult Function(TestEventIntsReceived value) intsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestEventStarted value)? started,
    TResult Function(TestEventIntsReceived value)? intsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res> implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  final TestEvent _value;
  // ignore: unused_field
  final $Res Function(TestEvent) _then;
}

/// @nodoc
abstract class $TestEventStartedCopyWith<$Res> {
  factory $TestEventStartedCopyWith(
          TestEventStarted value, $Res Function(TestEventStarted) then) =
      _$TestEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestEventStartedCopyWithImpl<$Res> extends _$TestEventCopyWithImpl<$Res>
    implements $TestEventStartedCopyWith<$Res> {
  _$TestEventStartedCopyWithImpl(
      TestEventStarted _value, $Res Function(TestEventStarted) _then)
      : super(_value, (v) => _then(v as TestEventStarted));

  @override
  TestEventStarted get _value => super._value as TestEventStarted;
}

/// @nodoc

class _$TestEventStarted implements TestEventStarted {
  const _$TestEventStarted();

  @override
  String toString() {
    return 'TestEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TestEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<int> ints) intsReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<int> ints)? intsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestEventStarted value) started,
    required TResult Function(TestEventIntsReceived value) intsReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestEventStarted value)? started,
    TResult Function(TestEventIntsReceived value)? intsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TestEventStarted implements TestEvent {
  const factory TestEventStarted() = _$TestEventStarted;
}

/// @nodoc
abstract class $TestEventIntsReceivedCopyWith<$Res> {
  factory $TestEventIntsReceivedCopyWith(TestEventIntsReceived value,
          $Res Function(TestEventIntsReceived) then) =
      _$TestEventIntsReceivedCopyWithImpl<$Res>;
  $Res call({List<int> ints});
}

/// @nodoc
class _$TestEventIntsReceivedCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res>
    implements $TestEventIntsReceivedCopyWith<$Res> {
  _$TestEventIntsReceivedCopyWithImpl(
      TestEventIntsReceived _value, $Res Function(TestEventIntsReceived) _then)
      : super(_value, (v) => _then(v as TestEventIntsReceived));

  @override
  TestEventIntsReceived get _value => super._value as TestEventIntsReceived;

  @override
  $Res call({
    Object? ints = freezed,
  }) {
    return _then(TestEventIntsReceived(
      ints == freezed
          ? _value.ints
          : ints // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$TestEventIntsReceived implements TestEventIntsReceived {
  const _$TestEventIntsReceived(this.ints);

  @override
  final List<int> ints;

  @override
  String toString() {
    return 'TestEvent.intsReceived(ints: $ints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestEventIntsReceived &&
            (identical(other.ints, ints) ||
                const DeepCollectionEquality().equals(other.ints, ints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ints);

  @JsonKey(ignore: true)
  @override
  $TestEventIntsReceivedCopyWith<TestEventIntsReceived> get copyWith =>
      _$TestEventIntsReceivedCopyWithImpl<TestEventIntsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<int> ints) intsReceived,
  }) {
    return intsReceived(ints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<int> ints)? intsReceived,
    required TResult orElse(),
  }) {
    if (intsReceived != null) {
      return intsReceived(ints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestEventStarted value) started,
    required TResult Function(TestEventIntsReceived value) intsReceived,
  }) {
    return intsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestEventStarted value)? started,
    TResult Function(TestEventIntsReceived value)? intsReceived,
    required TResult orElse(),
  }) {
    if (intsReceived != null) {
      return intsReceived(this);
    }
    return orElse();
  }
}

abstract class TestEventIntsReceived implements TestEvent {
  const factory TestEventIntsReceived(List<int> ints) = _$TestEventIntsReceived;

  List<int> get ints => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestEventIntsReceivedCopyWith<TestEventIntsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TestStateTearOff {
  const _$TestStateTearOff();

  TestStateInitial initial() {
    return const TestStateInitial();
  }

  TestStateStartInProgress startInProgress() {
    return const TestStateStartInProgress();
  }

  TestStateStartSuccess startSuccess(List<int> ints) {
    return TestStateStartSuccess(
      ints,
    );
  }
}

/// @nodoc
const $TestState = _$TestStateTearOff();

/// @nodoc
mixin _$TestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startInProgress,
    required TResult Function(List<int> ints) startSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startInProgress,
    TResult Function(List<int> ints)? startSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStateInitial value) initial,
    required TResult Function(TestStateStartInProgress value) startInProgress,
    required TResult Function(TestStateStartSuccess value) startSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStateInitial value)? initial,
    TResult Function(TestStateStartInProgress value)? startInProgress,
    TResult Function(TestStateStartSuccess value)? startSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res> implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  final TestState _value;
  // ignore: unused_field
  final $Res Function(TestState) _then;
}

/// @nodoc
abstract class $TestStateInitialCopyWith<$Res> {
  factory $TestStateInitialCopyWith(
          TestStateInitial value, $Res Function(TestStateInitial) then) =
      _$TestStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestStateInitialCopyWithImpl<$Res> extends _$TestStateCopyWithImpl<$Res>
    implements $TestStateInitialCopyWith<$Res> {
  _$TestStateInitialCopyWithImpl(
      TestStateInitial _value, $Res Function(TestStateInitial) _then)
      : super(_value, (v) => _then(v as TestStateInitial));

  @override
  TestStateInitial get _value => super._value as TestStateInitial;
}

/// @nodoc

class _$TestStateInitial implements TestStateInitial {
  const _$TestStateInitial();

  @override
  String toString() {
    return 'TestState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TestStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startInProgress,
    required TResult Function(List<int> ints) startSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startInProgress,
    TResult Function(List<int> ints)? startSuccess,
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
    required TResult Function(TestStateInitial value) initial,
    required TResult Function(TestStateStartInProgress value) startInProgress,
    required TResult Function(TestStateStartSuccess value) startSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStateInitial value)? initial,
    TResult Function(TestStateStartInProgress value)? startInProgress,
    TResult Function(TestStateStartSuccess value)? startSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TestStateInitial implements TestState {
  const factory TestStateInitial() = _$TestStateInitial;
}

/// @nodoc
abstract class $TestStateStartInProgressCopyWith<$Res> {
  factory $TestStateStartInProgressCopyWith(TestStateStartInProgress value,
          $Res Function(TestStateStartInProgress) then) =
      _$TestStateStartInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestStateStartInProgressCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res>
    implements $TestStateStartInProgressCopyWith<$Res> {
  _$TestStateStartInProgressCopyWithImpl(TestStateStartInProgress _value,
      $Res Function(TestStateStartInProgress) _then)
      : super(_value, (v) => _then(v as TestStateStartInProgress));

  @override
  TestStateStartInProgress get _value =>
      super._value as TestStateStartInProgress;
}

/// @nodoc

class _$TestStateStartInProgress implements TestStateStartInProgress {
  const _$TestStateStartInProgress();

  @override
  String toString() {
    return 'TestState.startInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TestStateStartInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startInProgress,
    required TResult Function(List<int> ints) startSuccess,
  }) {
    return startInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startInProgress,
    TResult Function(List<int> ints)? startSuccess,
    required TResult orElse(),
  }) {
    if (startInProgress != null) {
      return startInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStateInitial value) initial,
    required TResult Function(TestStateStartInProgress value) startInProgress,
    required TResult Function(TestStateStartSuccess value) startSuccess,
  }) {
    return startInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStateInitial value)? initial,
    TResult Function(TestStateStartInProgress value)? startInProgress,
    TResult Function(TestStateStartSuccess value)? startSuccess,
    required TResult orElse(),
  }) {
    if (startInProgress != null) {
      return startInProgress(this);
    }
    return orElse();
  }
}

abstract class TestStateStartInProgress implements TestState {
  const factory TestStateStartInProgress() = _$TestStateStartInProgress;
}

/// @nodoc
abstract class $TestStateStartSuccessCopyWith<$Res> {
  factory $TestStateStartSuccessCopyWith(TestStateStartSuccess value,
          $Res Function(TestStateStartSuccess) then) =
      _$TestStateStartSuccessCopyWithImpl<$Res>;
  $Res call({List<int> ints});
}

/// @nodoc
class _$TestStateStartSuccessCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res>
    implements $TestStateStartSuccessCopyWith<$Res> {
  _$TestStateStartSuccessCopyWithImpl(
      TestStateStartSuccess _value, $Res Function(TestStateStartSuccess) _then)
      : super(_value, (v) => _then(v as TestStateStartSuccess));

  @override
  TestStateStartSuccess get _value => super._value as TestStateStartSuccess;

  @override
  $Res call({
    Object? ints = freezed,
  }) {
    return _then(TestStateStartSuccess(
      ints == freezed
          ? _value.ints
          : ints // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$TestStateStartSuccess implements TestStateStartSuccess {
  const _$TestStateStartSuccess(this.ints);

  @override
  final List<int> ints;

  @override
  String toString() {
    return 'TestState.startSuccess(ints: $ints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestStateStartSuccess &&
            (identical(other.ints, ints) ||
                const DeepCollectionEquality().equals(other.ints, ints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ints);

  @JsonKey(ignore: true)
  @override
  $TestStateStartSuccessCopyWith<TestStateStartSuccess> get copyWith =>
      _$TestStateStartSuccessCopyWithImpl<TestStateStartSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startInProgress,
    required TResult Function(List<int> ints) startSuccess,
  }) {
    return startSuccess(ints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startInProgress,
    TResult Function(List<int> ints)? startSuccess,
    required TResult orElse(),
  }) {
    if (startSuccess != null) {
      return startSuccess(ints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStateInitial value) initial,
    required TResult Function(TestStateStartInProgress value) startInProgress,
    required TResult Function(TestStateStartSuccess value) startSuccess,
  }) {
    return startSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStateInitial value)? initial,
    TResult Function(TestStateStartInProgress value)? startInProgress,
    TResult Function(TestStateStartSuccess value)? startSuccess,
    required TResult orElse(),
  }) {
    if (startSuccess != null) {
      return startSuccess(this);
    }
    return orElse();
  }
}

abstract class TestStateStartSuccess implements TestState {
  const factory TestStateStartSuccess(List<int> ints) = _$TestStateStartSuccess;

  List<int> get ints => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestStateStartSuccessCopyWith<TestStateStartSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
