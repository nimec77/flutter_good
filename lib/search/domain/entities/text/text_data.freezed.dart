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

  _TextData call(String text, DateTime createData) {
    return _TextData(
      text,
      createData,
    );
  }

  _TextDataEmpty empty() {
    return const _TextDataEmpty();
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
    TResult Function(_TextData value) $default, {
    required TResult Function(_TextDataEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TextData value)? $default, {
    TResult Function(_TextDataEmpty value)? empty,
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
abstract class _$TextDataCopyWith<$Res> {
  factory _$TextDataCopyWith(_TextData value, $Res Function(_TextData) then) =
      __$TextDataCopyWithImpl<$Res>;
  $Res call({String text, DateTime createData});
}

/// @nodoc
class __$TextDataCopyWithImpl<$Res> extends _$TextDataCopyWithImpl<$Res>
    implements _$TextDataCopyWith<$Res> {
  __$TextDataCopyWithImpl(_TextData _value, $Res Function(_TextData) _then)
      : super(_value, (v) => _then(v as _TextData));

  @override
  _TextData get _value => super._value as _TextData;

  @override
  $Res call({
    Object? text = freezed,
    Object? createData = freezed,
  }) {
    return _then(_TextData(
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

class _$_TextData implements _TextData {
  const _$_TextData(this.text, this.createData);

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
        (other is _TextData &&
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
  _$TextDataCopyWith<_TextData> get copyWith =>
      __$TextDataCopyWithImpl<_TextData>(this, _$identity);

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
    TResult Function(_TextData value) $default, {
    required TResult Function(_TextDataEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TextData value)? $default, {
    TResult Function(_TextDataEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TextData implements TextData {
  const factory _TextData(String text, DateTime createData) = _$_TextData;

  String get text => throw _privateConstructorUsedError;
  DateTime get createData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TextDataCopyWith<_TextData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TextDataEmptyCopyWith<$Res> {
  factory _$TextDataEmptyCopyWith(
          _TextDataEmpty value, $Res Function(_TextDataEmpty) then) =
      __$TextDataEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$TextDataEmptyCopyWithImpl<$Res> extends _$TextDataCopyWithImpl<$Res>
    implements _$TextDataEmptyCopyWith<$Res> {
  __$TextDataEmptyCopyWithImpl(
      _TextDataEmpty _value, $Res Function(_TextDataEmpty) _then)
      : super(_value, (v) => _then(v as _TextDataEmpty));

  @override
  _TextDataEmpty get _value => super._value as _TextDataEmpty;
}

/// @nodoc

class _$_TextDataEmpty implements _TextDataEmpty {
  const _$_TextDataEmpty();

  @override
  String toString() {
    return 'TextData.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TextDataEmpty);
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
    TResult Function(_TextData value) $default, {
    required TResult Function(_TextDataEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TextData value)? $default, {
    TResult Function(_TextDataEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _TextDataEmpty implements TextData {
  const factory _TextDataEmpty() = _$_TextDataEmpty;
}
