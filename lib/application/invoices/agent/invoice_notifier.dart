import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/domain/invoices/i_invoice_repo.dart';
import 'package:easal/domain/invoices/invoice.dart';
import 'package:easal/domain/invoices/invoice_failure.dart';
import 'package:easal/injectable.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invoice_notifier.g.dart';

@Riverpod(keepAlive: true)
class InvoiceNotifier extends _$InvoiceNotifier {
  final _invoiceRepo = getIt<IInvoiceRepo>();
  @override
  FutureOr<Either<InvoiceFailure, Invoice>> build() async {
    final invoice = await _invoiceRepo.getCurrentAgentInvoice(
      getIt<AuthBloc>().state.maybeMap(
            orElse: () => throw Error(),
            authenticated: (value) => value.account.id,
          ),
    );
    // await invoice.fold(
    //     (l) async => l.maybeMap(
    //         orElse: () => null,
    //         noCurrentInvoice: (_) async {
    //           await createInvoice();
    //         }),
    //     (r) => null);
    return invoice;
  }

  Future<void> createInvoice() async {
    state = const AsyncLoading();
    final lInvoice = await _invoiceRepo.createInvoice(Invoice(
        id: 'id',
        number: 0,
        totalValue: 0,
        totalReceipts: 0,
        status: InvoiceStatus.unconfirmed,
        date: DateTime.now(),
        agent: getIt<AuthBloc>().state.maybeMap(
              orElse: () => throw Error(),
              authenticated: (value) => value.account,
            ),
        submited: false,
        receipts: []));

    state = AsyncData(lInvoice);
  }

  Future<void> submitInvoice(BuildContext context) async {
    final invoice = state.value!.fold(
      (l) => throw Error(),
      (r) => r,
    );
    state = const AsyncLoading();
    final res = await _invoiceRepo.submitInvoice(invoice);

    res.fold(
      (l) => state = AsyncData(left(l)),
      (r) {
        state = AsyncData(
          left(const InvoiceFailure.noCurrentInvoice()),
        );
        showSuccessToast(context, "تم رفع التوريدة بنجاح");
      },
    );
  }
}

void showSuccessToast(BuildContext context, String message) {
  FToast().init(context).showToast(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.greenAccent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              message,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 5));
}

void showFailureToast(BuildContext context, String message) {
  FToast().init(context).showToast(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.redAccent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              message,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 5));
}
