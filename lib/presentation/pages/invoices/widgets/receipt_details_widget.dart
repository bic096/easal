import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/agent/receipt_notifier.dart';
import 'package:easal/domain/core/pdf_service.dart';
import 'package:easal/domain/invoices/receipt.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class ReceiptDetailsWidget extends HookConsumerWidget {
  const ReceiptDetailsWidget({
    super.key,
    required this.receipt,
    this.isNewReceipt = false,
  });
  final Receipt receipt;
  final bool isNewReceipt;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
        child: Column(children: [
      Align(
          alignment: Alignment.topRight,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  icon: const Icon(Icons.close)),
              const Spacer(),
              PopupMenuButton(
                offset: const Offset(24, 24),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: const Center(
                          child: Text(
                        'إلغاء الايصال',
                        style: TextStyle(color: Colors.redAccent),
                      )),
                      onTap: () {
                        showAdaptiveDialog(
                            context: context,
                            builder: (c) {
                              return Dialog(
                                child: SizedBox(
                                  width: 520,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'إلغاء إيصال',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                          'تأكيد إلغاء إيصال, لا يمكن التراجع عن هذا !!'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateColor
                                                        .resolveWith((states) =>
                                                            kcBackgroundD),
                                                textStyle: MaterialStateProperty
                                                    .resolveWith((states) =>
                                                        const TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                kcBackgroundD)),
                                                fixedSize: MaterialStateProperty
                                                    .resolveWith((states) =>
                                                        const Size(200, 40)),
                                                shape: MaterialStateProperty.resolveWith<
                                                        OutlinedBorder>(
                                                    (states) => const RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .horizontal(
                                                                left: Radius
                                                                    .circular(
                                                                        5),
                                                                right: Radius
                                                                    .circular(
                                                                        5)))),
                                                backgroundColor:
                                                    MaterialStateColor
                                                        .resolveWith((states) =>
                                                            Colors.redAccent),
                                              ),
                                              onPressed: () async {
                                                context.router.pop();

                                                await ref
                                                    .read(
                                                        ReceiptNotifierProvider()
                                                            .notifier)
                                                    .cancelReceipt(
                                                        context, receipt);
                                              },
                                              child:
                                                  const Text('إلغاء الايصال')),
                                          ElevatedButton(
                                              onPressed: () {
                                                context.router.pop();
                                              },
                                              style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateColor
                                                        .resolveWith((states) =>
                                                            kcBackgroundD),
                                                textStyle: MaterialStateProperty
                                                    .resolveWith((states) =>
                                                        const TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                kcBackgroundD)),
                                                fixedSize: MaterialStateProperty
                                                    .resolveWith((states) =>
                                                        const Size(200, 40)),
                                                shape: MaterialStateProperty.resolveWith<
                                                        OutlinedBorder>(
                                                    (states) => const RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .horizontal(
                                                                left: Radius
                                                                    .circular(
                                                                        5),
                                                                right: Radius
                                                                    .circular(
                                                                        5)))),
                                                backgroundColor:
                                                    MaterialStateColor
                                                        .resolveWith((states) =>
                                                            kcAccent),
                                              ),
                                              child: const Text('تراجع'))
                                        ],
                                      ),
                                      20.veri,
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    )
                  ];
                },
                icon: const Icon(
                  Icons.more_horiz_sharp,
                ),
              )
            ],
          )),
      const Center(
        child: Text(
          'تفاصيل الإيصال',
          style: TextStyle(
            color: kcBodyText,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      30.veri,
      SizedBox(
        height: 40,
        child: TextFormField(
          textDirection: TextDirection.ltr,
          initialValue: receipt.number.toString(),
          readOnly: true,
          decoration: const InputDecoration(labelText: 'الرقم').deco(),
        ),
      ).textFieldDeco(topSpace: 10),
      20.veri,
      SizedBox(
        height: 40,
        child: TextFormField(
          initialValue: receipt.clientName,
          readOnly: true,
          decoration: const InputDecoration(labelText: 'الاسم').deco(),
        ),
      ).textFieldDeco(topSpace: 10),
      20.veri,
      SizedBox(
        height: 40,
        child: TextFormField(
          initialValue: receipt.type,
          readOnly: true,
          decoration: const InputDecoration(labelText: 'نوع الايصال').deco(),
        ),
      ).textFieldDeco(topSpace: 10),
      20.veri,
      SizedBox(
        height: 40,
        child: TextFormField(
          initialValue: receipt.value.toString(),
          readOnly: true,
          decoration: const InputDecoration(labelText: 'قيمة الايصال').deco(),
        ),
      ).textFieldDeco(topSpace: 10),
      20.veri,
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          // height: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'التعليق',
                style: TextStyle(
                  color: kcBodyText,
                  fontWeight: FontWeight.bold,
                ),
              ),
              5.veri,
              Text(
                receipt.description ?? '',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          )).textFieldDeco(topSpace: 0),
      20.veri,
      SizedBox(
        height: 40,
        child: TextFormField(
          textDirection: TextDirection.ltr,
          initialValue:
              '''${receipt.date.year}-${receipt.date.month}-${receipt.date.day}:${receipt.date.hour}-${receipt.date.minute}-${receipt.date.second}''',
          readOnly: true,
          decoration: const InputDecoration(labelText: 'االتاريخ').deco(),
        ),
      ).textFieldDeco(topSpace: 10),
      40.veri,
      isNewReceipt == true
          ? ElevatedButton(
              onPressed: () async {
                context.loaderOverlay.show();
                final printed = await printReceipt(receipt, isReceiptNew: true);
                if (printed) {
                  if (context.mounted) {
                    context.loaderOverlay.hide();
                    context.router.pop();
                  }
                } else {
                  if (context.mounted) context.loaderOverlay.hide();
                }
              },
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateColor.resolveWith((states) => kcBackgroundD),
                textStyle: MaterialStateProperty.resolveWith((states) =>
                    const TextStyle(fontSize: 18, color: kcBackgroundD)),
                fixedSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(200, 40)),
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                    (states) => const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5),
                            right: Radius.circular(5)))),
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => kcAccent),
              ),
              child: const Text('طباعة'),
            )
          :
          // : MainActionButton(
          //     height: 40,
          //     radius: 5,
          //     width: 200,
          //     lableText: 'إعادة طباعة',
          //     onTap: () {},
          //   ),
          ElevatedButton(
              onPressed: () async {
                context.loaderOverlay.show();
                final printed = await printReceipt(receipt);
                if (printed) {
                  if (context.mounted) {
                    context.loaderOverlay.hide();
                  }
                } else {
                  if (context.mounted) context.loaderOverlay.hide();
                }
              },
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateColor.resolveWith((states) => kcBackgroundD),
                textStyle: MaterialStateProperty.resolveWith((states) =>
                    const TextStyle(fontSize: 18, color: kcBackgroundD)),
                fixedSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(200, 40)),
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                    (states) => const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5),
                            right: Radius.circular(5)))),
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => kcAccent),
              ),
              child: const Text('إعادة طباعة'),
            ),
      20.veri,
    ]));
  }
}
