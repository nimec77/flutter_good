// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'text_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TextDataFailureTearOff {
  const _$TextDataFailureTearOff();

  _TextDataFailureUnexpected unexpected() {
    return const _TextDataFailureUnexpected();
  }

  _TextDataFailureError error(String message) {
    return _TextDataFailureError(
      message,
    );
  }
}

/// @nodoc
const $TextDataFailure = _$TextDataFailureTearOff();

/// @nodoc
mixin _$TextDataFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDataFailureUnexpected value) unexpected,
    required TResult Function(_TextDataFailureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDataFailureUnexpected value)? unexpected,
    TResult Function(_TextDataFailureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDataFailureCopyWith<$Res> {
  factory $TextDataFailureCopyWith(
          TextDataFailure value, $Res Function(TextDataFailure) then) =
      _$TextDataFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$TextDataFailureCopyWithImpl<$Res>
    implements $TextDataFailureCopyWith<$Res> {
  _$TextDataFailureCopyWithImpl(this._value, this._then);

  final TextDataFailure _value;
  // ignore: unused_field
  final $Res Function(TextDataFailure) _then;
}

/// @nodoc
abstract class _$TextDataFailureUnexpectedCopyWith<$Res> {
  factory _$TextDataFailureUnexpectedCopyWith(_TextDataFailureUnexpected value,
          $Res Function(_TextDataFailureUnexpected) then) =
      __$TextDataFailureUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TextDataFailureUnexpectedCopyWithImpl<$Res>
    extends _$TextDataFailureCopyWithImpl<$Res>
    implements _$TextDataFailureUnexpectedCopyWith<$Res> {
  __$TextDataFailureUnexpectedCopyWithImpl(_TextDataFailureUnexpected _value,
      $Res Function(_TextDataFailureUnexpected) _then)
      : super(_value, (v) => _then(v as _TextDataFailureUnexpected));

  @override
  _TextDataFailureUnexpected get _value =>
      super._value as _TextDataFailureUnexpected;
}

/// @nodoc

class _$_TextDataFailureUnexpected implements _TextDataFailureUnexpected {
  const _$_TextDataFailureUnexpected();

  @override
  String toString() {
    return 'TextDataFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TextDataFailureUnexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) error,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDataFailureUnexpected value) unexpected,
    required TResult Function(_TextDataFailureError value) error,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDataFailureUnexpected value)? unexpected,
    TResult Function(_TextDataFailureError value)? error,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _TextDataFailureUnexpected implements TextDataFailure {
  const factory _TextDataFailureUnexpected() = _$_TextDataFailureUnexpected;
}

/// @nodoc
abstract class _$TextDataFailureErrorCopyWith<$Res> {
  factory _$TextDataFailureErrorCopyWith(_TextDataFailureError value,
          $Res Function(_TextDataFailureError) then) =
      __$TextDataFailureErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$TextDataFailureErrorCopyWithImpl<$Res>
    extends _$TextDataFailureCopyWithImpl<$Res>
    implements _$TextDataFailureErrorCopyWith<$Res> {
  __$TextDataFailureErrorCopyWithImpl(
      _TextDataFailureError _value, $Res Function(_TextDataFailureError) _then)
      : super(_value, (v) => _then(v as _TextDataFailureError));

  @override
  _TextDataFailureError get _value => super._value as _TextDataFailureError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_TextDataFailureError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextDataFailureError implements _TextDataFailureError {
  const _$_TextDataFailureError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TextDataFailure.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextDataFailureError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$TextDataFailureErrorCopyWith<_TextDataFailureError> get copyWith =>
      __$TextDataFailureErrorCopyWithImpl<_TextDataFailureError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDataFailureUnexpected value) unexpected,
    required TResult Function(_TextDataFailureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDataFailureUnexpected value)? unexpected,
    TResult Function(_TextDataFailureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TextDataFailureError implements TextDataFailure {
  const factory _TextDataFailureError(String message) = _$_TextDataFailureError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TextDataFailureErrorCopyWith<_TextDataFailureError> get copyWith =>
      throw _privateConstructorUsedError;
}
