import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/supervisor/invoice_pods.dart';
import 'package:easal/domain/core/pdf_service.dart';
import 'package:easal/domain/invoices/invoice.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/pages/invoices/widgets/receipt_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:side_sheet/side_sheet.dart';

@RoutePage()
class InvoiceDetailsPage extends ConsumerWidget {
  const InvoiceDetailsPage({super.key, required this.invoice});
  final Invoice invoice;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen(acceptInvoiceProvider(), (previous, next) { })
    return ref.watch(getInvoiceDetailsProvider(invoice.id)).when(
          error: (_, __) => const Center(
            child: Text('errrrrpprrrrrrrrrrrr'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (either) => either.fold(
              (l) => const Center(
                    child: Text('Errrrooorrrrrrrr'),
                  ),
              (invoice) => Scaffold(
                    body: Column(children: [
                      30.veri,
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              10.hori,
                              IconButton(
                                  onPressed: () {
                                    context.router.pop();
                                  },
                                  icon: const Icon(Icons.arrow_back_rounded)),
                              const Spacer(),
                              ElevatedButton(
                                onPressed: () async {
                                  context.loaderOverlay.show();
                                  final printed = await printInvoice(invoice);
                                  if (printed) {
                                    if (context.mounted) {
                                      context.loaderOverlay.hide();
                                    }
                                  } else {
                                    if (context.mounted) {
                                      context.loaderOverlay.hide();
                                    }
                                  }
                                },
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => kcBackgroundD),
                                  textStyle: MaterialStateProperty.resolveWith(
                                      (states) => const TextStyle(
                                          fontSize: 18, color: kcBackgroundD)),
                                  fixedSize: MaterialStateProperty.resolveWith(
                                      (states) => const Size(200, 40)),
                                  shape: MaterialStateProperty.resolveWith<
                                          OutlinedBorder>(
                                      (states) => const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(5),
                                              right: Radius.circular(5)))),
                                  backgroundColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => kcAccent),
                                ),
                                child: const Text('طباعة'),
                              ),
                              20.hori,
                              invoice.status == InvoiceStatus.confirmed
                                  ? const SizedBox()
                                  : ElevatedButton(
                                      onPressed: () {
                                        ref.read(
                                            acceptInvoiceProvider(invoice));
                                      },
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => kcBackgroundD),
                                        textStyle:
                                            MaterialStateProperty.resolveWith(
                                                (states) => const TextStyle(
                                                    fontSize: 18,
                                                    color: kcBackgroundD)),
                                        fixedSize:
                                            MaterialStateProperty.resolveWith(
                                                (states) =>
                                                    const Size(200, 40)),
                                        shape: MaterialStateProperty.resolveWith<
                                                OutlinedBorder>(
                                            (states) =>
                                                const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.horizontal(
                                                            left:
                                                                Radius.circular(
                                                                    5),
                                                            right:
                                                                Radius.circular(
                                                                    5)))),
                                        backgroundColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.green),
                                      ),
                                      child: const Text('توثيق'),
                                    ),
                            ],
                          ),
                        ),
                      ),
                      10.veri,
                      Row(
                        children: [
                          Expanded(
                              child: ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            title: Row(
                              children: [
                                const Text(
                                  'اسم المتحصل',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                10.hori,
                                Text(invoice.agent.name),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Tooltip(
                            message: invoice.status == InvoiceStatus.confirmed
                                ? "موثقة"
                                : "غير موثقة",
                            child: ListTile(
                                title: Row(
                              children: [
                                const Text(
                                  'الحالة',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                10.hori,
                                Text(
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
                                ),
                              ],
                            )),
                          )),
                          Expanded(
                              child: ListTile(
                                  title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'رقم التوريدة',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              10.hori,
                              Text(invoice.number.toString()),
                            ],
                          ))),
                          const Spacer()
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            title: Row(
                              children: [
                                const Text(
                                  'عدد الايصالات',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                10.hori,
                                Text(invoice.totalReceipts.toString()),
                              ],
                            ),
                          )),
                          Expanded(
                              child: ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            title: Row(
                              children: [
                                const Text(
                                  'القيمة الكلية',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                10.hori,
                                Text(invoice.totalValue.toString()),
                              ],
                            ),
                          )),
                          Expanded(
                              child: ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            title: Row(
                              children: [
                                const Text(
                                  'التاريخ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                10.hori,
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
                            ),
                          )),
                          const Spacer()
                        ],
                      ),
                      10.veri,
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
                                color: receipt.canceled == false
                                    ? kcTextFieldsAndButtonsBackground
                                    : Colors.redAccent,
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
                    ]),
                  )),
        );
  }
}
