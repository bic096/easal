import 'package:easal/domain/users/account.dart';
import 'package:easal/domain/invoices/receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'invoice.freezed.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String id,
    required int number,
    required int totalValue,
    required int totalReceipts,
    required InvoiceStatus status,
    required DateTime date,
    required Account agent,
    required bool submited,
    required List<Receipt> receipts,
  }) = _Invoice;
}

enum InvoiceStatus { confirmed, unconfirmed }
