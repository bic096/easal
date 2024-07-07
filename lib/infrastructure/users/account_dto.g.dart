// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountDto _$$_AccountDtoFromJson(Map<String, dynamic> json) =>
    _$_AccountDto(
      id: json['id'] as String,
      number: json['number'] as int,
      userName: json['username'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_AccountDtoToJson(_$_AccountDto instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
    };
