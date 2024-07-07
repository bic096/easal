// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceDto _$$_InvoiceDtoFromJson(Map<String, dynamic> json) =>
    _$_InvoiceDto(
      id: json['id'] as String,
      number: json['number'] as int,
      totalValue: json['totalValue'] as int,
      totalReceipts: json['totalReceipts'] as int,
      status: json['status'] as String,
      date: dateFromJson(json['created'] as String),
      agent: agentFromJson(json['expand'] as Map<String, dynamic>),
      submited: json['submited'] as bool,
      receipts:
          (json['receipts'] as List<dynamic>).map((e) => e as String).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InvoiceDtoToJson(_$_InvoiceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'totalValue': instance.totalValue,
      'totalReceipts': instance.totalReceipts,
      'status': instance.status,
      'created': instance.date.toIso8601String(),
      'expand': instance.agent,
      'submited': instance.submited,
      'receipts': instance.receipts,
      'runtimeType': instance.$type,
    };

_$_InvoiceDtoUpload _$$_InvoiceDtoUploadFromJson(Map<String, dynamic> json) =>
    _$_InvoiceDtoUpload(
      id: json['id'] as String,
      number: json['number'] as int,
      totalValue: json['totalValue'] as int,
      totalReceipts: json['totalReceipts'] as int,
      status: json['status'] as String,
      date: dateFromJson(json['created'] as String),
      agentId: json['agentId'] as String,
      submited: json['submited'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InvoiceDtoUploadToJson(_$_InvoiceDtoUpload instance) =>
    <String, dynamic>{
      'status': instance.status,
      'created': instance.date.toIso8601String(),
      'agentId': instance.agentId,
      'submited': instance.submited,
      'runtimeType': instance.$type,
    };
