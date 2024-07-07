import 'package:easal/application/invoices/invoice_.dart';
import 'package:easal/domain/core/paginated_list.dart';
import 'package:easal/domain/invoices/i_invoice_repo.dart';
import 'package:easal/domain/invoices/invoice.dart';
import 'package:easal/domain/invoices/invoice_failure.dart';
import 'package:easal/domain/invoices/receipt_type.dart';
import 'package:easal/infrastructure/invoices/invoice_dto.dart';
import 'package:easal/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'invoice_pods.g.dart';

@riverpod
FutureOr<Either<InvoiceFailure, PaginatedList<Invoice>>> listInvoices(
  ListInvoicesRef ref, {
  InvoiceStatus? status,
  int page = 1,
  int perPage = 30,
  String? sort,
  String? filter,
}) async {
  final lFilter = status == null
      ? 'submited=true${filter == null ? '' : ',$filter'}'
      : 'status=${status.name},submited=true${filter == null ? '' : ',$filter'}';
  final lSort = sort == null ? '-number' : '-number,$sort';
  ref.state = const AsyncValue.loading();
  final invoieRepo = getIt<IInvoiceRepo>();

  final either = await invoieRepo.listInvoices(
    filter: lFilter,
    sort: lSort,
    page: page,
    perPage: perPage,
  );

  return either.fold(
    (l) {
      ref.state = AsyncData(left(l));
      return left(l);
    },
    (resultList) {
      var invoices = PaginatedList<Invoice>(
          page: resultList.page,
          perPage: resultList.perPage,
          totalItems: resultList.totalItems,
          totalPages: resultList.totalPages,
          items: []);
      for (var invoice in resultList.items) {
        invoices = invoices.copyWith(items: [
          ...invoices.items,
          InvoiceDto.fromJson(invoice.toJson()).toDomain()
        ]);
      }
      ref.state = AsyncData(right(invoices));
      return right(invoices);
    },
  );
}

@riverpod
FutureOr<Either<InvoiceFailure, Invoice>> getInvoiceDetails(
    GetInvoiceDetailsRef ref, String invoiceId) async {
  ref.state = const AsyncLoading();
  final invoiceRepo = getIt<IInvoiceRepo>();

  final either = await invoiceRepo.getInvoice(invoiceId);
  ref.state = AsyncData(either);
  return either;
}

@riverpod
FutureOr<Either<InvoiceFailure, Invoice>> acceptInvoice(
    AcceptInvoiceRef ref, Invoice invoice) async {
  ref.state = const AsyncLoading();
  final invoiceRepo = getIt<IInvoiceRepo>();
  final either = await invoiceRepo.acceptInvoice(invoice);
  either.fold((l) => null, (r) {
    ref.invalidate(getInvoiceDetailsProvider(r.id));
    ref.invalidate(listInvoicesProvider);
  });
  ref.state = AsyncData(either);

  return either;
}

@riverpod
FutureOr<Either<InvoiceFailure, ReceiptType>> addReceiptType(
  AddReceiptTypeRef ref,
  ReceiptType type,
) async {
  ref.state = const AsyncLoading();
  final invoRepo = getIt<IInvoiceRepo>();
  final either = await invoRepo.addReceiptType(type);
  either.fold((l) => null, (r) {
    ref.invalidate(receiptTypesProvider);
  });

  ref.state = AsyncData(either);

  return either;
}
