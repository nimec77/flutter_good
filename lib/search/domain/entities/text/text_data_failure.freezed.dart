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

  TextDataFailureUnexpected unexpected() {
    return const TextDataFailureUnexpected();
  }

  TextDataFailureError error(String message) {
    return TextDataFailureError(
      message,
    );
  }

  TextDataAlgoliaError algoliaError(AlgoliaError error) {
    return TextDataAlgoliaError(
      error,
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
    required TResult Function(AlgoliaError error) algoliaError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? error,
    TResult Function(AlgoliaError error)? algoliaError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextDataFailureUnexpected value) unexpected,
    required TResult Function(TextDataFailureError value) error,
    required TResult Function(TextDataAlgoliaError value) algoliaError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextDataFailureUnexpected value)? unexpected,
    TResult Function(TextDataFailureError value)? error,
    TResult Function(TextDataAlgoliaError value)? algoliaError,
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
abstract class $TextDataFailureUnexpectedCopyWith<$Res> {
  factory $TextDataFailureUnexpectedCopyWith(TextDataFailureUnexpected value,
          $Res Function(TextDataFailureUnexpected) then) =
      _$TextDataFailureUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TextDataFailureUnexpectedCopyWithImpl<$Res>
    extends _$TextDataFailureCopyWithImpl<$Res>
    implements $TextDataFailureUnexpectedCopyWith<$Res> {
  _$TextDataFailureUnexpectedCopyWithImpl(TextDataFailureUnexpected _value,
      $Res Function(TextDataFailureUnexpected) _then)
      : super(_value, (v) => _then(v as TextDataFailureUnexpected));

  @override
  TextDataFailureUnexpected get _value =>
      super._value as TextDataFailureUnexpected;
}

/// @nodoc

class _$TextDataFailureUnexpected implements TextDataFailureUnexpected {
  const _$TextDataFailureUnexpected();

  @override
  String toString() {
    return 'TextDataFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TextDataFailureUnexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) error,
    required TResult Function(AlgoliaError error) algoliaError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? error,
    TResult Function(AlgoliaError error)? algoliaError,
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
    required TResult Function(TextDataFailureUnexpected value) unexpected,
    required TResult Function(TextDataFailureError value) error,
    required TResult Function(TextDataAlgoliaError value) algoliaError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextDataFailureUnexpected value)? unexpected,
    TResult Function(TextDataFailureError value)? error,
    TResult Function(TextDataAlgoliaError value)? algoliaError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class TextDataFailureUnexpected implements TextDataFailure {
  const factory TextDataFailureUnexpected() = _$TextDataFailureUnexpected;
}

/// @nodoc
abstract class $TextDataFailureErrorCopyWith<$Res> {
  factory $TextDataFailureErrorCopyWith(TextDataFailureError value,
          $Res Function(TextDataFailureError) then) =
      _$TextDataFailureErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$TextDataFailureErrorCopyWithImpl<$Res>
    extends _$TextDataFailureCopyWithImpl<$Res>
    implements $TextDataFailureErrorCopyWith<$Res> {
  _$TextDataFailureErrorCopyWithImpl(
      TextDataFailureError _value, $Res Function(TextDataFailureError) _then)
      : super(_value, (v) => _then(v as TextDataFailureError));

  @override
  TextDataFailureError get _value => super._value as TextDataFailureError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TextDataFailureError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextDataFailureError implements TextDataFailureError {
  const _$TextDataFailureError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TextDataFailure.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextDataFailureError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $TextDataFailureErrorCopyWith<TextDataFailureError> get copyWith =>
      _$TextDataFailureErrorCopyWithImpl<TextDataFailureError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) error,
    required TResult Function(AlgoliaError error) algoliaError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? error,
    TResult Function(AlgoliaError error)? algoliaError,
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
    required TResult Function(TextDataFailureUnexpected value) unexpected,
    required TResult Function(TextDataFailureError value) error,
    required TResult Function(TextDataAlgoliaError value) algoliaError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextDataFailureUnexpected value)? unexpected,
    TResult Function(TextDataFailureError value)? error,
    TResult Function(TextDataAlgoliaError value)? algoliaError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TextDataFailureError implements TextDataFailure {
  const factory TextDataFailureError(String message) = _$TextDataFailureError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDataFailureErrorCopyWith<TextDataFailureError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDataAlgoliaErrorCopyWith<$Res> {
  factory $TextDataAlgoliaErrorCopyWith(TextDataAlgoliaError value,
          $Res Function(TextDataAlgoliaError) then) =
      _$TextDataAlgoliaErrorCopyWithImpl<$Res>;
  $Res call({AlgoliaError error});
}

/// @nodoc
class _$TextDataAlgoliaErrorCopyWithImpl<$Res>
    extends _$TextDataFailureCopyWithImpl<$Res>
    implements $TextDataAlgoliaErrorCopyWith<$Res> {
  _$TextDataAlgoliaErrorCopyWithImpl(
      TextDataAlgoliaError _value, $Res Function(TextDataAlgoliaError) _then)
      : super(_value, (v) => _then(v as TextDataAlgoliaError));

  @override
  TextDataAlgoliaError get _value => super._value as TextDataAlgoliaError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(TextDataAlgoliaError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AlgoliaError,
    ));
  }
}

/// @nodoc

class _$TextDataAlgoliaError implements TextDataAlgoliaError {
  const _$TextDataAlgoliaError(this.error);

  @override
  final AlgoliaError error;

  @override
  String toString() {
    return 'TextDataFailure.algoliaError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextDataAlgoliaError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $TextDataAlgoliaErrorCopyWith<TextDataAlgoliaError> get copyWith =>
      _$TextDataAlgoliaErrorCopyWithImpl<TextDataAlgoliaError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) error,
    required TResult Function(AlgoliaError error) algoliaError,
  }) {
    return algoliaError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? error,
    TResult Function(AlgoliaError error)? algoliaError,
    required TResult orElse(),
  }) {
    if (algoliaError != null) {
      return algoliaError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextDataFailureUnexpected value) unexpected,
    required TResult Function(TextDataFailureError value) error,
    required TResult Function(TextDataAlgoliaError value) algoliaError,
  }) {
    return algoliaError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextDataFailureUnexpected value)? unexpected,
    TResult Function(TextDataFailureError value)? error,
    TResult Function(TextDataAlgoliaError value)? algoliaError,
    required TResult orElse(),
  }) {
    if (algoliaError != null) {
      return algoliaError(this);
    }
    return orElse();
  }
}

abstract class TextDataAlgoliaError implements TextDataFailure {
  const factory TextDataAlgoliaError(AlgoliaError error) =
      _$TextDataAlgoliaError;

  AlgoliaError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDataAlgoliaErrorCopyWith<TextDataAlgoliaError> get copyWith =>
      throw _privateConstructorUsedError;
}
