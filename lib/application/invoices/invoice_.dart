import 'package:easal/domain/invoices/i_invoice_repo.dart';
import 'package:easal/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:easal/domain/invoices/invoice_failure.dart';
import 'package:easal/domain/invoices/receipt_type.dart';

part 'invoice_.g.dart';

// final _invoiceRepo = getIt<IInvoiceRepo>();

@Riverpod(keepAlive: true)
Future<Either<InvoiceFailure, List<ReceiptType>>> receiptTypes(
    ReceiptTypesRef ref) async {
  ref.state = const AsyncLoading();

  final invoiceRepo = getIt<IInvoiceRepo>();

  final either = await invoiceRepo.listReceiptTypes();
  ref.state = AsyncData(either);

  return either;

  // await Future.delayed(
  //     const Duration(seconds: 5)); // await _invoiceRepo.listReceiptTypes();
  // final res = List.generate(
  //     10,
  //     (index) => ReceiptType(
  //           id: '$index',
  //           number: index,
  //           name: 'name$index',
  //           value: index,
  //           group: ReceiptGroup.resedents,
  //         ));
  // return right(res);
}
