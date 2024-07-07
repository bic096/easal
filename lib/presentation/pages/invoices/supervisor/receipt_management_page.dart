import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/invoice_.dart';
import 'package:easal/application/invoices/supervisor/invoice_pods.dart';
import 'package:easal/domain/invoices/receipt_type.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/pages/users/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:side_sheet/side_sheet.dart';

@RoutePage()
class ReceiptManagementPage extends ConsumerWidget {
  const ReceiptManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receiptTypes = ref.watch(receiptTypesProvider);
    // ref.listen(receiptTypesProvider, (c, n) {
    //   n.whenData((value) => value.fold((l) => null, (r) {
    //         context.loaderOverlay.hide();
    //       }));
    // });
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
            height: 100,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'إدارة الايصالات',
                  style: TextStyle(
                    fontSize: 20,
                    color: kcBodyText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                MainActionButton(
                  lableText: 'إضافة',
                  onTap: () {
                    SideSheet.left(
                        context: context,
                        width: MediaQuery.of(context).size.width * 0.4,
                        sheetColor: kcBackgroundD,
                        barrierDismissible: false,
                        body: AddReceiptTypeWidget());
                  },
                  width: 200,
                  height: 50,
                ),
              ],
            )),
        const Divider(),
        const SizedBox(height: 0),
        SizedBox(
            height: MediaQuery.sizeOf(context).height - 180,
            child: receiptTypes.when(
              data: (either) => either.fold(
                  (l) => null,
                  (types) => ListView.builder(
                        shrinkWrap: true,
                        itemCount: types.length,
                        itemBuilder: (context, index) {
                          final type = types[index];
                          return Row(
                            children: [
                              Expanded(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: InkWell(
                                    onTap: () {
                                      SideSheet.left(
                                          context: context,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          sheetColor: kcBackgroundD,
                                          barrierDismissible: false,
                                          body: AddReceiptTypeWidget(
                                            type: type,
                                          ));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Row(
                                        children: [
                                          Expanded(child: Text(type.name)),
                                          20.hori,
                                          Expanded(
                                              child:
                                                  Text(type.value.toString())),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      )),
              error: (_, __) {
                return const Text('error');
              },
              loading: () {
                return const CircularProgressIndicator();
              },
            ))
      ]),
    ));
  }
}

class AddReceiptTypeWidget extends HookConsumerWidget {
  AddReceiptTypeWidget({super.key, this.type});
  final ReceiptType? type;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameCtrl =
        useTextEditingController(text: type != null ? type!.name : null);
    final valueCtrl = useTextEditingController(
        text: type != null ? type!.value.toString() : null);

    return SingleChildScrollView(
      child: Form(
        key: _key,
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
                  IconButton(
                    onPressed: () {},
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
          TextFormField(
            controller: nameCtrl,
            decoration: const InputDecoration(labelText: 'الاسم').deco(),
          ).mainEx(),
          20.veri,
          TextFormField(
            controller: valueCtrl,
            decoration: const InputDecoration(labelText: 'القيمة').deco(),
          ).mainEx(),
          20.veri,
          // Container(
          //   color: kcTextFieldsAndButtonsBackground,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const SizedBox(
          //         height: 24,
          //       ),
          //       DropdownMenu<ReceiptGroup>(
          //           initialSelection: groupValue.value,
          //           label: const Text('المجموعة'),
          //           width: 420,
          //           menuStyle: MenuStyle(
          //               backgroundColor: MaterialStateProperty.resolveWith(
          //                   (states) => kcTextFieldsAndButtonsBackground)),
          //           inputDecorationTheme: const InputDecorationTheme(
          //               hoverColor: kcTextFieldsAndButtonsBackground,
          //               floatingLabelBehavior: FloatingLabelBehavior.always,
          //               labelStyle: TextStyle(
          //                   color: kcBodyText,
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.bold),
          //               fillColor: kcTextFieldsAndButtonsBackground,
          //               filled: false,
          //               border: OutlineInputBorder(
          //                 borderSide: BorderSide.none,
          //               )),
          //           onSelected: (value) {
          //             groupValue.value = value;
          //           },
          //           dropdownMenuEntries: ReceiptGroup.values
          //               .map((e) => DropdownMenuEntry(
          //                   value: e,
          //                   label:
          //                       receiptTypesAR[ReceiptGroup.values.indexOf(e)]))
          //               .toList()),
          //     ],
          //   ),
          // ),

          30.veri,
          type != null
              ? ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {}
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateColor.resolveWith(
                        (states) => kcBackgroundD),
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
                  child: const Text('تحديث'))
              : ElevatedButton(
                  onPressed: () async {
                    if (_key.currentState!.validate()) {
                      // context.loaderOverlay.show();

                      ref.listenManual(
                          addReceiptTypeProvider(ReceiptType(
                            id: 'id',
                            number: 0,
                            name: nameCtrl.value.text,
                            value: int.parse(valueCtrl.value.text),
                          )), (previous, next) {
                        next.when(
                          data: (_) {
                            context.loaderOverlay.hide();
                            context.router.pop();
                          },
                          error: (_, __) {
                            context.loaderOverlay.hide();
                          },
                          loading: () {
                            context.loaderOverlay.show();
                          },
                        );
                      });
                    }
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateColor.resolveWith(
                        (states) => kcBackgroundD),
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
                  child: const Text('اضافة'))
        ]),
      ),
    );
  }
}
