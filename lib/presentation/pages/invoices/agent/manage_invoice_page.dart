import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/agent/invoice_notifier.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/pages/invoices/widgets/receipt_details_widget.dart';
import 'package:easal/presentation/pages/users/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:side_sheet/side_sheet.dart';

@RoutePage()
class ManageInvoicePage extends ConsumerWidget {
  const ManageInvoicePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoice = ref.watch(invoiceNotifierProvider);

    return invoice.when(
      data: (either) {
        return either.fold(
            (l) => l.maybeMap(
                  noCurrentInvoice: (_) {
                    return const Center(
                      child: Text(
                          ''' لاتوجد توريدة نشطة حاليا, قم بإضافة إيصال!'''),
                    );
                  },
                  orElse: () => Container(),
                ),
            (invoice) => Scaffold(
                  body: Column(children: [
                    30.veri,
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: MainActionButton(
                          height: 40,
                          width: 200,
                          radius: 5,
                          lableText: 'رفع',
                          onTap: () {
                            ref
                                .read(invoiceNotifierProvider.notifier)
                                .submitInvoice(context);
                          },
                        ),
                      ),
                    ),
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
                          title: Text('الاسم'),
                        )),
                        Expanded(
                            child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          leading: Icon(Icons.receipt_long_outlined),
                          title: Text('نوع لايصال'),
                        )),
                        Expanded(
                            child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          leading: Icon(Icons.money),
                          title: Text('القيمة'),
                        )),
                        Expanded(
                            child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          leading: Icon(Icons.comment),
                          title: Text('التعليق'),
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
                          itemCount: invoice.receipts.length,
                          itemBuilder: (context, index) {
                            final receipt = invoice.receipts[index];
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              elevation: 0,
                              color: receipt.canceled == true
                                  ? Colors.redAccent
                                  : kcTextFieldsAndButtonsBackground,
                              child: InkWell(
                                onTap: receipt.canceled == true
                                    ? null
                                    : () {
                                        SideSheet.left(
                                            context: context,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            sheetColor: kcBackgroundD,
                                            barrierDismissible: false,
                                            body: ReceiptDetailsWidget(
                                                receipt: receipt));
                                      },
                                child: Row(
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Expanded(
                                        child: Tooltip(
                                      textAlign: TextAlign.center,
                                      message: receipt.number.toString(),
                                      child: ListTile(
                                          title: Text(
                                        receipt.number.toString(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      )),
                                    )),
                                    Expanded(
                                        child: Tooltip(
                                      message: receipt.clientName,
                                      child: ListTile(
                                          title: Text(
                                        receipt.clientName,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      )),
                                    )),
                                    Expanded(
                                        child: Tooltip(
                                      message: receipt.type,
                                      child: ListTile(
                                          title: Text(
                                        receipt.type,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      )),
                                    )),
                                    Expanded(
                                        child: Tooltip(
                                      textAlign: TextAlign.end,
                                      message: receipt.value.toString(),
                                      child: ListTile(
                                          title: Text(
                                        receipt.value.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      )),
                                    )),
                                    Expanded(
                                        child: Tooltip(
                                      message: receipt.description ?? '',
                                      child: ListTile(
                                          title: Text(
                                        receipt.description ?? '',
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      )),
                                    )),
                                    Expanded(
                                        child: ListTile(
                                            title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${receipt.date.year}-${receipt.date.month}-${receipt.date.day}',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              '${receipt.date.hour}:${receipt.date.minute}:${receipt.date.second}',
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
                    const Divider(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        40.hori,
                        Expanded(
                          child: ListTile(
                            leading: const Text('العدد'),
                            title: Text(invoice.totalReceipts.toString()),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                              leading: const Text('الاجمالي'),
                              title: Text(
                                invoice.totalValue.toString(),
                              )),
                        ),
                        const Spacer()
                      ],
                    ),
                    const Divider(
                      height: 0,
                    )
                  ]),
                ));
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stackTrace) {
        return const Scaffold(
          body: Center(
            child: Text('error'),
          ),
        );
      },
    );
  }
}
