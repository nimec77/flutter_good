// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'text_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TextDataTearOff {
  const _$TextDataTearOff();

  TextDataValue call(String text, DateTime createData) {
    return TextDataValue(
      text,
      createData,
    );
  }

  TextDataEmpty empty() {
    return const TextDataEmpty();
  }
}

/// @nodoc
const $TextData = _$TextDataTearOff();

/// @nodoc
mixin _$TextData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, DateTime createData) $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, DateTime createData)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TextDataValue value) $default, {
    required TResult Function(TextDataEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TextDataValue value)? $default, {
    TResult Function(TextDataEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDataCopyWith<$Res> {
  factory $TextDataCopyWith(TextData value, $Res Function(TextData) then) =
      _$TextDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$TextDataCopyWithImpl<$Res> implements $TextDataCopyWith<$Res> {
  _$TextDataCopyWithImpl(this._value, this._then);

  final TextData _value;
  // ignore: unused_field
  final $Res Function(TextData) _then;
}

/// @nodoc
abstract class $TextDataValueCopyWith<$Res> {
  factory $TextDataValueCopyWith(
          TextDataValue value, $Res Function(TextDataValue) then) =
      _$TextDataValueCopyWithImpl<$Res>;
  $Res call({String text, DateTime createData});
}

/// @nodoc
class _$TextDataValueCopyWithImpl<$Res> extends _$TextDataCopyWithImpl<$Res>
    implements $TextDataValueCopyWith<$Res> {
  _$TextDataValueCopyWithImpl(
      TextDataValue _value, $Res Function(TextDataValue) _then)
      : super(_value, (v) => _then(v as TextDataValue));

  @override
  TextDataValue get _value => super._value as TextDataValue;

  @override
  $Res call({
    Object? text = freezed,
    Object? createData = freezed,
  }) {
    return _then(TextDataValue(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createData == freezed
          ? _value.createData
          : createData // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TextDataValue implements TextDataValue {
  const _$TextDataValue(this.text, this.createData);

  @override
  final String text;
  @override
  final DateTime createData;

  @override
  String toString() {
    return 'TextData(text: $text, createData: $createData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextDataValue &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.createData, createData) ||
                const DeepCollectionEquality()
                    .equals(other.createData, createData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(createData);

  @JsonKey(ignore: true)
  @override
  $TextDataValueCopyWith<TextDataValue> get copyWith =>
      _$TextDataValueCopyWithImpl<TextDataValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, DateTime createData) $default, {
    required TResult Function() empty,
  }) {
    return $default(text, createData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, DateTime createData)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(text, createData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TextDataValue value) $default, {
    required TResult Function(TextDataEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TextDataValue value)? $default, {
    TResult Function(TextDataEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TextDataValue implements TextData {
  const factory TextDataValue(String text, DateTime createData) =
      _$TextDataValue;

  String get text => throw _privateConstructorUsedError;
  DateTime get createData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDataValueCopyWith<TextDataValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDataEmptyCopyWith<$Res> {
  factory $TextDataEmptyCopyWith(
          TextDataEmpty value, $Res Function(TextDataEmpty) then) =
      _$TextDataEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$TextDataEmptyCopyWithImpl<$Res> extends _$TextDataCopyWithImpl<$Res>
    implements $TextDataEmptyCopyWith<$Res> {
  _$TextDataEmptyCopyWithImpl(
      TextDataEmpty _value, $Res Function(TextDataEmpty) _then)
      : super(_value, (v) => _then(v as TextDataEmpty));

  @override
  TextDataEmpty get _value => super._value as TextDataEmpty;
}

/// @nodoc

class _$TextDataEmpty implements TextDataEmpty {
  const _$TextDataEmpty();

  @override
  String toString() {
    return 'TextData.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TextDataEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, DateTime createData) $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, DateTime createData)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TextDataValue value) $default, {
    required TResult Function(TextDataEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TextDataValue value)? $default, {
    TResult Function(TextDataEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TextDataEmpty implements TextData {
  const factory TextDataEmpty() = _$TextDataEmpty;
}
