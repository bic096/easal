// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) {
  return _AccountDto.fromJson(json);
}

/// @nodoc
mixin _$AccountDto {
  @JsonKey(includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDtoCopyWith<AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDtoCopyWith<$Res> {
  factory $AccountDtoCopyWith(
          AccountDto value, $Res Function(AccountDto) then) =
      _$AccountDtoCopyWithImpl<$Res, AccountDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(includeToJson: false) int number,
      @JsonKey(name: 'username') String userName,
      String name,
      String? email,
      String role});
}

/// @nodoc
class _$AccountDtoCopyWithImpl<$Res, $Val extends AccountDto>
    implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? userName = null,
    Object? name = null,
    Object? email = freezed,
    Object? role = null,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountDtoCopyWith<$Res>
    implements $AccountDtoCopyWith<$Res> {
  factory _$$_AccountDtoCopyWith(
          _$_AccountDto value, $Res Function(_$_AccountDto) then) =
      __$$_AccountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(includeToJson: false) int number,
      @JsonKey(name: 'username') String userName,
      String name,
      String? email,
      String role});
}

/// @nodoc
class __$$_AccountDtoCopyWithImpl<$Res>
    extends _$AccountDtoCopyWithImpl<$Res, _$_AccountDto>
    implements _$$_AccountDtoCopyWith<$Res> {
  __$$_AccountDtoCopyWithImpl(
      _$_AccountDto _value, $Res Function(_$_AccountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? userName = null,
    Object? name = null,
    Object? email = freezed,
    Object? role = null,
  }) {
    return _then(_$_AccountDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountDto extends _AccountDto with DiagnosticableTreeMixin {
  const _$_AccountDto(
      {@JsonKey(includeToJson: false) required this.id,
      @JsonKey(includeToJson: false) required this.number,
      @JsonKey(name: 'username') required this.userName,
      required this.name,
      this.email,
      required this.role})
      : super._();

  factory _$_AccountDto.fromJson(Map<String, dynamic> json) =>
      _$$_AccountDtoFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  @JsonKey(includeToJson: false)
  final int number;
  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDto(id: $id, number: $number, userName: $userName, name: $name, email: $email, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, number, userName, name, email, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountDtoCopyWith<_$_AccountDto> get copyWith =>
      __$$_AccountDtoCopyWithImpl<_$_AccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountDtoToJson(
      this,
    );
  }
}

abstract class _AccountDto extends AccountDto {
  const factory _AccountDto(
      {@JsonKey(includeToJson: false) required final String id,
      @JsonKey(includeToJson: false) required final int number,
      @JsonKey(name: 'username') required final String userName,
      required final String name,
      final String? email,
      required final String role}) = _$_AccountDto;
  const _AccountDto._() : super._();

  factory _AccountDto.fromJson(Map<String, dynamic> json) =
      _$_AccountDto.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  @JsonKey(includeToJson: false)
  int get number;
  @override
  @JsonKey(name: 'username')
  String get userName;
  @override
  String get name;
  @override
  String? get email;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_AccountDtoCopyWith<_$_AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
