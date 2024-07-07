// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiptType {
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiptTypeCopyWith<ReceiptType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptTypeCopyWith<$Res> {
  factory $ReceiptTypeCopyWith(
          ReceiptType value, $Res Function(ReceiptType) then) =
      _$ReceiptTypeCopyWithImpl<$Res, ReceiptType>;
  @useResult
  $Res call({String id, int number, String name, int value});
}

/// @nodoc
class _$ReceiptTypeCopyWithImpl<$Res, $Val extends ReceiptType>
    implements $ReceiptTypeCopyWith<$Res> {
  _$ReceiptTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptTypeCopyWith<$Res>
    implements $ReceiptTypeCopyWith<$Res> {
  factory _$$_ReceiptTypeCopyWith(
          _$_ReceiptType value, $Res Function(_$_ReceiptType) then) =
      __$$_ReceiptTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int number, String name, int value});
}

/// @nodoc
class __$$_ReceiptTypeCopyWithImpl<$Res>
    extends _$ReceiptTypeCopyWithImpl<$Res, _$_ReceiptType>
    implements _$$_ReceiptTypeCopyWith<$Res> {
  __$$_ReceiptTypeCopyWithImpl(
      _$_ReceiptType _value, $Res Function(_$_ReceiptType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$_ReceiptType(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReceiptType with DiagnosticableTreeMixin implements _ReceiptType {
  const _$_ReceiptType(
      {required this.id,
      required this.number,
      required this.name,
      required this.value});

  @override
  final String id;
  @override
  final int number;
  @override
  final String name;
  @override
  final int value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReceiptType(id: $id, number: $number, name: $name, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReceiptType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, number, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptTypeCopyWith<_$_ReceiptType> get copyWith =>
      __$$_ReceiptTypeCopyWithImpl<_$_ReceiptType>(this, _$identity);
}

abstract class _ReceiptType implements ReceiptType {
  const factory _ReceiptType(
      {required final String id,
      required final int number,
      required final String name,
      required final int value}) = _$_ReceiptType;

  @override
  String get id;
  @override
  int get number;
  @override
  String get name;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptTypeCopyWith<_$_ReceiptType> get copyWith =>
      throw _privateConstructorUsedError;
}
