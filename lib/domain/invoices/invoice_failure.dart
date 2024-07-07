import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'invoice_failure.freezed.dart';

@freezed
sealed class InvoiceFailure with _$InvoiceFailure {
  const factory InvoiceFailure.networkFailure() = NetworkFailure;
  const factory InvoiceFailure.noCurrentInvoice() = NoCurrentInvoice;
  const factory InvoiceFailure.noReceiptSelected() = NoReceiptSelected;
}
