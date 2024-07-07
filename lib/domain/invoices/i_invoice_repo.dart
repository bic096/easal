import 'package:easal/domain/invoices/invoice.dart';
import 'package:easal/domain/invoices/invoice_failure.dart';
import 'package:easal/domain/invoices/receipt.dart';
import 'package:easal/domain/invoices/receipt_type.dart';
import 'package:fpdart/fpdart.dart';
import 'package:pocketbase/pocketbase.dart';

abstract interface class IInvoiceRepo {
  ///manage Invoice for agent
  Future<Either<InvoiceFailure, Invoice>> createInvoice(Invoice invoice);
  Future<Either<InvoiceFailure, Invoice>> getCurrentAgentInvoice(
      String agentId);
  Future<Either<InvoiceFailure, Unit>> submitInvoice(Invoice invoice);

  ///common to agent and supervisor
  // Future<Either<InvoiceFailure, List<Receipt>>> listInvoiceReceipts(
  //     String invoiceId);
  Future<Either<InvoiceFailure, List<ReceiptType>>> listReceiptTypes();

  ///agent receipt managment
  Future<Either<InvoiceFailure, Receipt>> createReceipt(Receipt receipt);
  Future<Either<InvoiceFailure, Receipt>> cancelReceipt(String receiptId);
  Future<Either<InvoiceFailure, Unit>> printReceipt(Receipt receipt);
  Future<Either<InvoiceFailure, Unit>> rePrintReceipt(Receipt receipt);

  ///manage Invoice for supervisor
  Future<Either<InvoiceFailure, ResultList<RecordModel>>> listInvoices({
    int page = 1,
    int perPage = 30,
    String? sort,
    String? filter,
  });
  Future<Either<InvoiceFailure, Invoice>> getInvoice(String invoiceId);

  Future<Either<InvoiceFailure, Invoice>> acceptInvoice(Invoice invoice);
  Future<Either<InvoiceFailure, Invoice>> printInvoice(Invoice invoice);

  Future<Either<InvoiceFailure, ReceiptType>> addReceiptType(ReceiptType type);
}
