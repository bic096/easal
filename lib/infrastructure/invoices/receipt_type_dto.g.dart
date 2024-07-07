// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptTypeDto _$$_ReceiptTypeDtoFromJson(Map<String, dynamic> json) =>
    _$_ReceiptTypeDto(
      id: json['id'] as String,
      number: json['number'] as int,
      name: json['name'] as String,
      value: json['value'] as int,
    );

Map<String, dynamic> _$$_ReceiptTypeDtoToJson(_$_ReceiptTypeDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
