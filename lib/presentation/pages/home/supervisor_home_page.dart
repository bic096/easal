import 'package:auto_route/auto_route.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/application/users/list_agents_cubit.dart';
import 'package:easal/injectable.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/pages/invoices/supervisor/invoices_list_page.dart';
import 'package:easal/presentation/pages/invoices/supervisor/receipt_management_page.dart';
import 'package:easal/presentation/pages/users/supervisor/supervisor_manage_agent_page.dart';
import 'package:easal/presentation/route/router.gr.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SupervisorHomePage extends StatefulHookConsumerWidget {
  const SupervisorHomePage({super.key});

  @override
  ConsumerState<SupervisorHomePage> createState() => _AgentHomePageState();
}

class _AgentHomePageState extends ConsumerState<SupervisorHomePage> {
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
                    title: 'التوريدات',
                    onTap: (index, _) {
                      _sideMenuController.changePage(index);
                      setState(() {
                        _index = index;
                      });
                    },
                    icon: const Icon(Icons.inventory_outlined),
                    tooltipContent: "التوريدات",
                  ),
                  SideMenuItem(
                    title: 'إدارة الايصالات',
                    onTap: (index, _) {
                      _sideMenuController.changePage(index);
                      setState(() {
                        _index = index;
                      });
                      getIt<ListAgentsCubit>().listAgentsAccountsBySupervisor(
                          getIt<AuthBloc>().state.maybeMap(
                                orElse: () => throw Error(),
                                authenticated: (value) => value.account,
                              ));
                    },
                    icon: const Icon(Icons.add_chart),
                  ),
                  SideMenuItem(
                    title: 'إدارة المتحصلين',
                    onTap: (index, _) {
                      _sideMenuController.changePage(index);
                      setState(() {
                        _index = index;
                      });
                      getIt<ListAgentsCubit>().listAgentsAccountsBySupervisor(
                          getIt<AuthBloc>().state.maybeMap(
                                orElse: () => throw Error(),
                                authenticated: (value) => value.account,
                              ));
                    },
                    icon: const Icon(Icons.people_alt_outlined),

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
                    const InvoicesListPage(),
                    const ReceiptManagementPage(),
                    const SupervisorManageAgentsPage(),
                    Container()
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
