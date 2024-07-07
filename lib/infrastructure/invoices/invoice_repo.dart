import 'package:easal/domain/invoices/i_invoice_repo.dart';
import 'package:easal/domain/invoices/invoice.dart';
import 'package:easal/domain/invoices/invoice_failure.dart';
import 'package:easal/domain/invoices/receipt.dart';
import 'package:easal/domain/invoices/receipt_type.dart';
import 'package:easal/infrastructure/core/logger.dart';
import 'package:easal/infrastructure/invoices/invoice_dto.dart';
import 'package:easal/infrastructure/invoices/receipt_dto.dart';
import 'package:easal/infrastructure/invoices/receipt_type_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@Singleton(as: IInvoiceRepo)
class InvoiceRepo implements IInvoiceRepo {
  final log = logger(InvoiceRepo);
  final PocketBase _pocketBase;
  InvoiceRepo(this._pocketBase);
  @override
  Future<Either<InvoiceFailure, Invoice>> acceptInvoice(Invoice invoice) async {
    log.i('calling acceptReceipt fun');
    try {
      final invoiceJson = await _pocketBase.collection('invoices').update(
            invoice.id,
            body: {"status": InvoiceStatus.confirmed.name},
            expand: 'agentId,invoiceId',
          );
      log.i('invoice accepted successfully');
      log.d('response ${invoiceJson.toJson()}');
      return right(InvoiceDto.fromJson(invoiceJson.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('exception accur $e');
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, Receipt>> cancelReceipt(
      String receiptId) async {
    log.i('calling cancelReceipt fun');
    try {
      final receiptJson = await _pocketBase
          .collection('receipts')
          .update(receiptId, body: {"canceled": true});

      log.i('receipt canceled successfully');
      log.d('with response ${receiptJson.toJson()}');
      return right(ReceiptDto.fromJson(receiptJson.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('Exception accur $e');
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, Invoice>> createInvoice(Invoice invoice) async {
    log.i('calling createInvoice fun');

    try {
      final res = await _pocketBase.collection('invoices').create(
            body: InvoiceDto.fromDomain(invoice).toJson(),
            expand: 'agentId,invoiceId',
          );
      log.i('invoice created successfuly with response');
      log.d(res.toJson());
      return right(InvoiceDto.fromJson(res.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('exception accur $e');
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, Receipt>> createReceipt(Receipt receipt) async {
    log.i('calling createReceipt fun ');
    try {
      final receiptJson = await _pocketBase
          .collection('receipts')
          .create(body: ReceiptDto.fromDomain(receipt).toJson());
      log.i(receiptJson);
      return right(ReceiptDto.fromJson(receiptJson.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e(e);
      rethrow;
    } on Exception catch (e) {
      log.e(e);
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, Invoice>> getCurrentAgentInvoice(
      String agentId) async {
    log.i('calling getCurrentAgentInvoice fun with param agentId:$agentId');

    try {
      final invoiceJson = await _pocketBase.collection('invoices').getList(
          filter: 'agentId="$agentId"&&submited=false', expand: 'agentId');
      log.i(invoiceJson);
      if (invoiceJson.items.isEmpty) {
        log.i('no curret Invoice');
        return left(const InvoiceFailure.noCurrentInvoice());
      }
      Invoice invoice =
          InvoiceDto.fromJson(invoiceJson.items.first.toJson()).toDomain();
      final receiptsJson = await _pocketBase.collection('receipts').getList(
          perPage: 5000, //TODO - handel properly
          filter: 'invoiceId="${invoice.id}"',
          // expand: 'agentId,invoiceId',
          sort: '-created');
      log.t(receiptsJson);
      // invoice = invoice.copyWith(totalValue: 0);
      for (var receiptJson in receiptsJson.items) {
        final receipt = ReceiptDto.fromJson(receiptJson.toJson()).toDomain();
        invoice = invoice.copyWith(
          receipts: [...invoice.receipts, receipt],
          // totalReceipts: receiptsJson.totalItems,
          // totalValue: invoice.totalValue + receipt.value
        );
      }

      log.i(invoice.toString());
      return right(invoice);
    } on ClientException catch (e) {
      log.e('exception accur $e');
      rethrow;
    } on Exception catch (e) {
      log.e(e);
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, Invoice>> getInvoice(String invoiceId) async {
    log.i('calling getInvoice  fun');
    try {
      final invoiceJson = await _pocketBase.collection('invoices').getOne(
            invoiceId,
            expand: 'agentId',
          );
      log.i('invoice returned successflly');
      log.d(invoiceJson.toJson());
      Invoice invoice = InvoiceDto.fromJson(invoiceJson.toJson()).toDomain();
      final receiptsJson = await _pocketBase.collection('receipts').getList(
          perPage: 5000, //TODO - handel properly
          filter: 'invoiceId="${invoice.id}"',
          //   expand: 'agentId,invoiceId',
          sort: 'number');
      log.t(receiptsJson);
      // invoice = invoice.copyWith(totalValue: 0);
      for (var receiptJson in receiptsJson.items) {
        final receipt = ReceiptDto.fromJson(receiptJson.toJson()).toDomain();
        invoice = invoice.copyWith(
          receipts: [...invoice.receipts, receipt],
          // totalReceipts: receiptsJson.totalItems,
          // totalValue: invoice.totalValue + receipt.value
        );
      }
      log.i('invoice returned successflly');
      log.d(invoice.toString());

      return right(invoice);
    } on ClientException catch (e) {
      log.e('exception accur $e');
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, ResultList<RecordModel>>> listInvoices({
    int page = 1,
    int perPage = 30,
    String? sort,
    String? filter,
  }) async {
    log.i('calling listInvoices fun');

    try {
      final resultList = await _pocketBase.collection('invoices').getList(
            expand: 'agentId',
            filter: filter,
            page: page,
            perPage: perPage,
            sort: sort,
          );
      log.i('successfully');
      return right(resultList);
    } on ClientException catch (e) {
      log.e('exception accur $e');
      rethrow;
    } on Exception {
      rethrow;
    }

    // final invoices = List.generate(
    //     6,
    //     (index) => Invoice(
    //         id: index.toString(),
    //         totalValue: index,
    //         totalReceipts: index,
    //         status: index.isEven
    //             ? InvoiceStatus.unconfirmed
    //             : InvoiceStatus.confirmed,
    //         date: DateTime.now(),
    //         agent: Account(
    //             id: index.toString(),
    //             userName: 'userName$index',
    //             name: 'name$index',
    //             role: Role.agent),
    //         submited: true,
    //         receipts: []));
    // return right(invoices);
  }

  @override
  Future<Either<InvoiceFailure, List<ReceiptType>>> listReceiptTypes() async {
    log.i('calling listReceiptTypes fun');
    try {
      final typeList =
          await _pocketBase.collection('receiptTypes').getList(perPage: 500);
      log.i('list success');
      log.d(typeList.toJson());
      final receiptTypes = <ReceiptType>[];
      for (var ty in typeList.items) {
        receiptTypes.add(ReceiptTypeDto.fromJson(ty.toJson()).toDomain());
      }
      return right(receiptTypes);
    } on ClientException catch (e) {
      log.e('exception accur $e');
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, Unit>> submitInvoice(Invoice invoice) async {
    log.i('calling sbmitInvoice fun');
    try {
      final res =
          await _pocketBase.collection('invoices').update(invoice.id, body: {
        "submited": true,
      });
      log.i('invoice sumited successfuly');
      log.d(res.toJson());
      return right(unit);
    } on ClientException catch (e) {
      log.e('exception accur $e');
      rethrow;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<Either<InvoiceFailure, Invoice>> printInvoice(Invoice invoice) {
    // TODO: implement printInvoice
    throw UnimplementedError();
  }

  @override
  Future<Either<InvoiceFailure, Unit>> printReceipt(Receipt receipt) {
    // TODO: implement printReceipt
    throw UnimplementedError();
  }

  @override
  Future<Either<InvoiceFailure, Unit>> rePrintReceipt(Receipt receipt) {
    // TODO: implement rePrintReceipt
    throw UnimplementedError();
  }

  @override
  Future<Either<InvoiceFailure, ReceiptType>> addReceiptType(
      ReceiptType type) async {
    log.i('calling addReceiptType fun');
    try {
      final res = await _pocketBase
          .collection('receiptTypes')
          .create(body: ReceiptTypeDto.fromDomain(type).toJson());
      log.i('addReceiptType fun called success');
      log.t('with data ${res.toJson()}');

      return right(ReceiptTypeDto.fromJson(res.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('client exception accur $e');

      rethrow;
    } on Exception catch (e) {
      log.e('general exception accur $e');
      rethrow;
    }
  }
}
