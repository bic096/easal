import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/agent/invoice_notifier.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/injectable.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/pages/invoices/agent/create_receipt_page.dart';
import 'package:easal/presentation/pages/invoices/agent/manage_invoice_page.dart';
import 'package:easal/presentation/pages/users/agent/agent_change_my_password_page.dart';
import 'package:easal/presentation/route/router.gr.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart' as p;

@RoutePage()
class AgentHomePage extends StatefulHookConsumerWidget {
  const AgentHomePage({super.key});

  @override
  ConsumerState<AgentHomePage> createState() => _AgentHomePageState();
}

class _AgentHomePageState extends ConsumerState<AgentHomePage> {
  final _sideMenuController = SideMenuController(initialPage: 1);
  int _index = 0;
  bool _displayModeAuto = false;
  SideMenuDisplayMode _displayMode = SideMenuDisplayMode.compact;
  @override
  void initState() {
    super.initState();
    _sideMenuController.addListener((index) {
      setState(() {
        _displayModeAuto = true;
        _index = index - 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //  print(MediaQuery.sizeOf(context).width);
    _displayModeAuto == true
        ? MediaQuery.sizeOf(context).width <= 1300
            ? _displayMode = SideMenuDisplayMode.compact
            : _displayMode = SideMenuDisplayMode.open
        : _displayMode = SideMenuDisplayMode.compact;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          unauthenticated: (value) {
            context.router.replace(const SignInRoute());
          },
        );
      },
      child: LayoutBuilder(
        builder: (context, constraints) => Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(
                controller: _sideMenuController,
                style: SideMenuStyle(
                  showTooltip: false,
                  displayMode: _displayMode,
                  hoverColor: Colors.blue[100],
                  //    selectedHoverColor: Colors.blue[100],
                  selectedColor: Colors.lightBlue,
                  selectedTitleTextStyle: const TextStyle(color: Colors.white),
                  selectedIconColor: Colors.white,
                  //     backgroundColor: Colors.blueGrey[700]
                ),
                items: [
                  SideMenuItem(
                    builder: (context, displayMode) => 40.veri,
                  ),
                  SideMenuItem(
                    title: 'إيصال جديد',
                    onTap: (index, _) {
                      _sideMenuController.changePage(index);
                      setState(() {
                        _index = index;
                      });
                    },
                    icon: const Icon(Icons.addchart_outlined),
                    tooltipContent: "إيصال جديد",
                  ),
                  SideMenuItem(
                      title: 'التوريدة',
                      onTap: (index, _) {
                        _sideMenuController.changePage(index);
                        setState(() {
                          _index = index;
                        });
                      },
                      icon: const Icon(Icons.receipt_long_sharp),
                      trailing: Tooltip(
                        message: 'تحديث',
                        child: ElevatedButton(
                            onPressed: () {
                              //!SECTION

                              showSuccessToast(context, "تم التحديث بنجاح");
                              ref
                                  .read(invoiceNotifierProvider.notifier)
                                  .ref
                                  .invalidateSelf();
                              print('----------------------------------------');
                              print(Directory.current.path);
                              print(Platform.resolvedExecutable);
                              print(p.dirname(Platform.resolvedExecutable) +
                                  p.windows.separator);
                              print(p.current);
                            },
                            style: ButtonStyle(
                              foregroundColor: MaterialStateColor.resolveWith(
                                  (states) => kcBackgroundD),
                              textStyle: MaterialStateProperty.resolveWith(
                                  (states) =>
                                      const TextStyle(color: kcBackgroundD)),
                              // fixedSize: MaterialStateProperty.resolveWith(
                              //     (states) => const Size(200, 40)),
                              shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>(
                                  (states) => const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(5),
                                          right: Radius.circular(5)))),
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green.shade400),
                            ),
                            child: const Icon(
                              Icons.refresh,
                            ) //const Text('تحديث'),
                            ),
                      )

                      // InkWell(
                      //   onTap: () {},
                      //   child: Container(
                      //       decoration: const BoxDecoration(
                      //           color: Colors.green,
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(6))),
                      //       child: const Padding(
                      //         padding: EdgeInsets.symmetric(
                      //             horizontal: 6.0, vertical: 3),
                      //         child: Text(
                      //           'تحديث',
                      //           style:
                      //               TextStyle(fontSize: 11, color: Colors.white),
                      //         ),
                      //       )),
                      // ),
                      ),
                  SideMenuItem(
                    title: 'إدارة الحساب',
                    onTap: (index, _) {
                      _sideMenuController.changePage(index);
                      setState(() {
                        _index = index;
                      });
                    },
                    icon: const Icon(Icons.manage_accounts),
                    trailing: Container(
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 3),
                          child: Text(
                            'New',
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey[800]),
                          ),
                        )),
                  ),
                  SideMenuItem(
                    builder: (context, displayMode) {
                      return const Divider(
                        endIndent: 8,
                        indent: 8,
                      );
                    },
                  ),
                  SideMenuItem(
                    title: 'مغادرة',
                    icon: const Icon(Icons.exit_to_app),
                    onTap: (index, sideMenuController) {
                      getIt<AuthBloc>().add(const AuthEvent.signOutStarted());
                    },
                  ),
                ],
              ),
              const VerticalDivider(),
              Expanded(
                child: IndexedStack(
                  index: _index,
                  children: [
                    CreateReceiptPage(),
                    const ManageInvoicePage(),
                    AgentChangeMyPasswordPage()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
