import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/agent/receipt_notifier.dart';
import 'package:easal/application/invoices/invoice_.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/domain/invoices/receipt.dart';
import 'package:easal/domain/invoices/receipt_type.dart';
import 'package:easal/injectable.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/pages/invoices/widgets/receipt_details_widget.dart';
import 'package:easal/presentation/pages/users/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:side_sheet/side_sheet.dart';

@RoutePage()
class CreateReceiptPage extends HookConsumerWidget {
  CreateReceiptPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receiptTypeE = ref.watch(receiptTypesProvider);

    final nameController = useTextEditingController();
    final receiptTypeController = useTextEditingController();
    final receiptValueController = useTextEditingController();
    final commentController = useTextEditingController();
    final selectedReceiptType = useState<ReceiptType?>(null);

    final receiptTypeErrorText = useState<String?>(null);

    ref.listen(receiptNotifierProvider(), (p, n) {
      print('listen ========================================================');
      n.when(data: (data) {
        print('data----------------------------------------');
        context.loaderOverlay.hide();
        data.fold((l) => null, (r) {
          _formKey.currentState?.reset();
          receiptTypeController.clear();
          nameController.clear();
          receiptValueController.clear();
          commentController.clear();
          SideSheet.left(
              context: context,
              width: MediaQuery.of(context).size.width * 0.4,
              sheetColor: kcBackgroundD,
              barrierDismissible: false,
              body: ReceiptDetailsWidget(
                receipt: r,
                isNewReceipt: true,
              ));
        });
      }, error: (e, s) {
        print('error-------------------------------------');
        context.loaderOverlay.hide();
      }, loading: () {
        print('loading-------------------------------------------');
        context.loaderOverlay.show();
      });
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
                width: double.infinity,
              ),
              MainTextInputField(
                labelText: 'الإسم',
                controller: nameController,
                validator: (val) {
                  if (val == null || val.isEmpty) return 'يجب تعبئة الحقل';
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: kcTextFieldsAndButtonsBackground,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        DropdownMenu<ReceiptType>(
                            errorText: receiptTypeErrorText.value,
                            onSelected: (value) {
                              selectedReceiptType.value = value!;

                              receiptValueController.text =
                                  value.value.toString();
                              receiptTypeErrorText.value = null;
                            },
                            menuStyle: MenuStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (states) =>
                                            kcTextFieldsAndButtonsBackground)),
                            controller: receiptTypeController,
                            label: const Text(
                              'نوع الايصال',
                            ),
                            width: 420,
                            inputDecorationTheme: const InputDecorationTheme(
                                hoverColor: kcTextFieldsAndButtonsBackground,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelStyle: TextStyle(
                                    color: kcBodyText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                fillColor: kcTextFieldsAndButtonsBackground,
                                filled: false,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                )),
                            dropdownMenuEntries: receiptTypeE.when(
                                data: (either) {
                                  return either.fold(
                                      (l) => <DropdownMenuEntry<ReceiptType>>[],
                                      (r) => r
                                          .map<DropdownMenuEntry<ReceiptType>>(
                                              (e) => DropdownMenuEntry(
                                                  value: e, label: e.name))
                                          .toList());
                                },
                                error: (_, __) =>
                                    <DropdownMenuEntry<ReceiptType>>[],
                                loading: () =>
                                    <DropdownMenuEntry<ReceiptType>>[])),
                      ])),
              const SizedBox(
                height: 30,
              ),
              MainTextInputField(
                labelText: 'قيمة الايصال',
                controller: receiptValueController,
                validator: (val) {
                  if (val == null || val.isEmpty) return 'يجب تعبئة الحقل';
                  if (int.tryParse(val) == null) {
                    return 'هذا الحقل يجب ان يحتوي على ارقام صحيحة فقط';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              MainTextInputField(
                labelText: 'التعليق',
                controller: commentController,
                validator: (val) {
                  // if (val == null || val.isEmpty) return 'يجب تعبئة الحقل';
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              MainActionButton(
                lableText: 'تنفيذ',
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    if (receiptTypeController.text.isNotEmpty) {
                      if (receiptTypeController.text !=
                          selectedReceiptType.value!.name) {
                        receiptTypeErrorText.value =
                            'يجب اختيار احد الايصالات بدون تعديل عليها';
                      } else {
                        receiptTypeErrorText.value = null;

                        final receipt = Receipt(
                            id: 'id',
                            number: 0,
                            agentId: 'agentId',
                            invoiceId: 'invoiceId',
                            typeId: selectedReceiptType.value!.id,
                            clientName: nameController.text,
                            agentName: getIt<AuthBloc>().state.maybeMap(
                                  orElse: () => throw Error(),
                                  authenticated: (value) => value.account.name,
                                ),
                            value: int.parse(receiptValueController.text),
                            type: selectedReceiptType.value!.name,
                            description: commentController.text,
                            canceled: false,
                            date: DateTime.now());
                        await ref
                            .read(receiptNotifierProvider().notifier)
                            .addReceipt(receipt);
                      }
                    } else {
                      receiptTypeErrorText.value = 'يجب تعبئة الحقل';
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
