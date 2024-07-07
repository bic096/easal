// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/supervisor/invoice_pods.dart';
import 'package:easal/domain/core/paginated_list.dart';
import 'package:easal/domain/invoices/invoice.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class InvoicesListPage extends ConsumerWidget {
  const InvoicesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoiceList = ref.watch(listInvoicesProvider(status: null));
    return invoiceList.when(
      error: (_, __) => const Center(
        child: Text('errorrrrrrrrrrrrr'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (either) => either.fold(
        (l) => const Center(
          child: Text('failure'),
        ),
        (invoices) => Scaffold(
          body: Column(children: [
            30.veri,
            const Row(
              children: [
                Expanded(
                    child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Icon(Icons.key),
                  title: Text('الرقم'),
                )),
                Expanded(
                    child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Icon(Icons.person_outline),
                  title: Text('اسم المتحصل'),
                )),
                Expanded(
                    child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Icon(Icons.receipt_long_outlined),
                  title: Text('الحالة'),
                )),
                Expanded(
                    child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Icon(Icons.calendar_today_outlined),
                  title: Text('التاريخ'),
                )),
              ],
            ),
            const Divider(
              height: 0,
            ),

            Expanded(
              flex: 3,
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .7,
                child: ListView.builder(
                  itemCount: invoices.items.length,
                  itemBuilder: (context, index) {
                    final invoice = invoices.items[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      elevation: 0,
                      color: kcTextFieldsAndButtonsBackground,
                      child: InkWell(
                        onTap: () {
                          context.router
                              .push(InvoiceDetailsRoute(invoice: invoice));
                        },
                        child: Row(
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Expanded(
                                child: Tooltip(
                              textAlign: TextAlign.center,
                              message: invoice.number.toString(),
                              child: ListTile(
                                  title: Text(
                                invoice.number.toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              )),
                            )),
                            Expanded(
                                child: Tooltip(
                              message: invoice.agent.name,
                              child: ListTile(
                                  title: Text(
                                invoice.agent.name,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              )),
                            )),
                            Expanded(
                                child: Tooltip(
                              message: invoice.status == InvoiceStatus.confirmed
                                  ? "موثقة"
                                  : "غير موثقة",
                              child: ListTile(
                                  title: Text(
                                invoice.status == InvoiceStatus.confirmed
                                    ? "موثقة"
                                    : "غير موثقة",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: invoice.status ==
                                            InvoiceStatus.confirmed
                                        ? Colors.greenAccent
                                        : Colors.red),
                              )),
                            )),
                            Expanded(
                                child: ListTile(
                                    title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${invoice.date.year}-${invoice.date.month}-${invoice.date.day}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      '${invoice.date.hour}:${invoice.date.minute}:${invoice.date.second}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            20.veri,

            // PaginatedDataTable(
            //     showFirstLastButtons: true,
            //     rowsPerPage: invoices.items.length,
            //     columns: const [
            //       DataColumn(
            //         label: Text('المعرف'),
            //       ),
            //       DataColumn(
            //         label: Text('اسم المتحصل'),
            //       ),
            //       DataColumn(label: Text('الحالة')),
            //       DataColumn(
            //         label: Text('التاريخ'),
            //       ),
            //     ],
            //     source: InvoiceListSource(invoices)),

            const Divider(),
            Row(
              children: [
                20.hori,
                RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'عدد العناصر  ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: invoices.totalItems.toString(),
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ])),
                20.hori,
                RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'الصفحة  ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: invoices.page.toString(),
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  const TextSpan(
                      text: '  من  ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: invoices.totalPages.toString(),
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ])),
                30.hori,
                IconButton(
                  icon: const Icon(Icons.navigate_before),
                  onPressed: invoices.page == 1
                      ? null
                      : () {
                          ref.read(
                              listInvoicesProvider(page: invoices.page - 1));
                        },
                ),
                10.hori,
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  onPressed: invoices.page == invoices.totalPages
                      ? null
                      : () {
                          ref.read(
                              listInvoicesProvider(page: invoices.page + 1));
                        },
                ),
              ],
            ),
            10.veri,
          ]),
        ),
      ),
    );
  }
}

class InvoiceListSource extends DataTableSource {
  InvoiceListSource(this._list);
  final PaginatedList<Invoice> _list;
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_list.items[index].id)),
      DataCell(Text(_list.items[index].agent.name)),
      DataCell(Text(_list.items[index].status.name)),
      DataCell(Text(_list.items[index].date.toString()))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _list.totalItems;

  @override
  int get selectedRowCount => 0;
}
