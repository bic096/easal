import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'receipt.freezed.dart';

@freezed
class Receipt with _$Receipt {
  const factory Receipt({
    required String id,
    required int number,
    required String agentId,
    required String invoiceId,
    required String typeId,
    required String agentName,
    required String clientName,
    String? description,
    required int value,
    required String type,
    required bool canceled,
    required DateTime date,
  }) = _Receipt;
}
