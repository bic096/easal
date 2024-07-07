import 'package:auto_route/auto_route.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/domain/invoices/i_invoice_repo.dart';
import 'package:easal/domain/invoices/invoice_failure.dart';
import 'package:easal/domain/invoices/receipt.dart';
import 'package:easal/injectable.dart';
import 'package:easal/presentation/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'invoice_notifier.dart';

part 'receipt_notifier.g.dart';

@Riverpod(keepAlive: true)
class ReceiptNotifier extends _$ReceiptNotifier {
  final _invoiceRepo = getIt<IInvoiceRepo>();
  @override
  FutureOr<Either<InvoiceFailure, Receipt>> build({Receipt? receipt}) async {
    if (receipt != null) {
      state = AsyncData(right(receipt));
      return right(receipt);
    }
    state = AsyncData(left(const InvoiceFailure.noReceiptSelected()));
    return left(const InvoiceFailure.noReceiptSelected());
  }

  Future<void> addReceipt(Receipt receipt) async {
    state = const AsyncLoading();

    await ref.read(invoiceNotifierProvider.notifier).state.value!.fold(
        (l) async => l.maybeMap(
              orElse: () {
                throw Error();
              },
              noCurrentInvoice: (_) async {
                await ref
                    .read(invoiceNotifierProvider.notifier)
                    .createInvoice();
              },
            ),
        (r) => null);

    final lReceipt = await _invoiceRepo.createReceipt(receipt.copyWith(
      invoiceId: ref
          .read(invoiceNotifierProvider.notifier)
          .state
          .value!
          .fold((l) => throw Error(), (r) => r.id),
      agentId: getIt<AuthBloc>().state.maybeMap(
            orElse: () => throw Error(),
            authenticated: (value) => value.account.id,
          ),
    ));

    await lReceipt.fold(
      (l) => null,
      (r) async => await _printReceipt(r),
    );

    state = AsyncData(lReceipt);
    lReceipt.fold((l) => null, (r) => ref.invalidate(invoiceNotifierProvider));
    //  ref.invalidateSelf();

    // await future;
  }

  Future<void> cancelReceipt(BuildContext context, Receipt receipt) async {
    final lReceipt = await _invoiceRepo.cancelReceipt(receipt.id);
    state = AsyncData(lReceipt);
    lReceipt.fold(
      (l) {
        showFailureToast(context, 'العملية لم تكتمل بنجح');
      },
      (r) {
        showSuccessToast(context, 'تم إلغاء الايصال بنجاح');
        ref.invalidate(invoiceNotifierProvider);
        context.router.popUntil(ModalRoute.withName(AgentHomeRoute.name));
      },
    );
  }

  Future<void> rePrintReceipt(Receipt receipt) async {}

//TODO - implement the print receipt method
  Future<void> _printReceipt(Receipt receipt) async {}
}
