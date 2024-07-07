// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptDto _$$_ReceiptDtoFromJson(Map<String, dynamic> json) =>
    _$_ReceiptDto(
      id: json['id'] as String,
      number: json['number'] as int,
      agentId: json['agentId'] as String,
      invoiceId: json['invoiceId'] as String,
      typeId: json['typeId'] as String,
      clientName: json['clientName'] as String,
      agentName: json['agentName'] as String,
      description: json['description'] as String?,
      value: json['value'] as int,
      type: json['type'] as String,
      canceled: json['canceled'] as bool,
      date: dateFromJson(json['created'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReceiptDtoToJson(_$_ReceiptDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'agentId': instance.agentId,
      'invoiceId': instance.invoiceId,
      'typeId': instance.typeId,
      'clientName': instance.clientName,
      'agentName': instance.agentName,
      'description': instance.description,
      'value': instance.value,
      'type': instance.type,
      'canceled': instance.canceled,
      'created': instance.date.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_ReceiptDtoUpload _$$_ReceiptDtoUploadFromJson(Map<String, dynamic> json) =>
    _$_ReceiptDtoUpload(
      id: json['id'] as String,
      number: json['number'] as int,
      agentId: json['agentId'] as String,
      invoiceId: json['invoiceId'] as String,
      typeId: json['typeId'] as String,
      clientName: json['clientName'] as String,
      agentName: json['agentName'] as String,
      description: json['description'] as String?,
      value: json['value'] as int,
      type: json['type'] as String,
      canceled: json['canceled'] as bool,
      date: dateFromJson(json['created'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReceiptDtoUploadToJson(_$_ReceiptDtoUpload instance) =>
    <String, dynamic>{
      'agentId': instance.agentId,
      'invoiceId': instance.invoiceId,
      'typeId': instance.typeId,
      'clientName': instance.clientName,
      'agentName': instance.agentName,
      'description': instance.description,
      'value': instance.value,
      'type': instance.type,
      'canceled': instance.canceled,
      'created': instance.date.toIso8601String(),
      'runtimeType': instance.$type,
    };
