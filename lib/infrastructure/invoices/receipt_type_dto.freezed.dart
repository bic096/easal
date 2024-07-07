// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptTypeDto _$ReceiptTypeDtoFromJson(Map<String, dynamic> json) {
  return _ReceiptTypeDto.fromJson(json);
}

/// @nodoc
mixin _$ReceiptTypeDto {
  @JsonKey(includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptTypeDtoCopyWith<ReceiptTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptTypeDtoCopyWith<$Res> {
  factory $ReceiptTypeDtoCopyWith(
          ReceiptTypeDto value, $Res Function(ReceiptTypeDto) then) =
      _$ReceiptTypeDtoCopyWithImpl<$Res, ReceiptTypeDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(includeToJson: false) int number,
      String name,
      int value});
}

/// @nodoc
class _$ReceiptTypeDtoCopyWithImpl<$Res, $Val extends ReceiptTypeDto>
    implements $ReceiptTypeDtoCopyWith<$Res> {
  _$ReceiptTypeDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_ReceiptTypeDtoCopyWith<$Res>
    implements $ReceiptTypeDtoCopyWith<$Res> {
  factory _$$_ReceiptTypeDtoCopyWith(
          _$_ReceiptTypeDto value, $Res Function(_$_ReceiptTypeDto) then) =
      __$$_ReceiptTypeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(includeToJson: false) int number,
      String name,
      int value});
}

/// @nodoc
class __$$_ReceiptTypeDtoCopyWithImpl<$Res>
    extends _$ReceiptTypeDtoCopyWithImpl<$Res, _$_ReceiptTypeDto>
    implements _$$_ReceiptTypeDtoCopyWith<$Res> {
  __$$_ReceiptTypeDtoCopyWithImpl(
      _$_ReceiptTypeDto _value, $Res Function(_$_ReceiptTypeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$_ReceiptTypeDto(
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
@JsonSerializable()
class _$_ReceiptTypeDto extends _ReceiptTypeDto {
  const _$_ReceiptTypeDto(
      {@JsonKey(includeToJson: false) required this.id,
      @JsonKey(includeToJson: false) required this.number,
      required this.name,
      required this.value})
      : super._();

  factory _$_ReceiptTypeDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptTypeDtoFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  @JsonKey(includeToJson: false)
  final int number;
  @override
  final String name;
  @override
  final int value;

  @override
  String toString() {
    return 'ReceiptTypeDto(id: $id, number: $number, name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptTypeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptTypeDtoCopyWith<_$_ReceiptTypeDto> get copyWith =>
      __$$_ReceiptTypeDtoCopyWithImpl<_$_ReceiptTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptTypeDtoToJson(
      this,
    );
  }
}

abstract class _ReceiptTypeDto extends ReceiptTypeDto {
  const factory _ReceiptTypeDto(
      {@JsonKey(includeToJson: false) required final String id,
      @JsonKey(includeToJson: false) required final int number,
      required final String name,
      required final int value}) = _$_ReceiptTypeDto;
  const _ReceiptTypeDto._() : super._();

  factory _ReceiptTypeDto.fromJson(Map<String, dynamic> json) =
      _$_ReceiptTypeDto.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  @JsonKey(includeToJson: false)
  int get number;
  @override
  String get name;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptTypeDtoCopyWith<_$_ReceiptTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
