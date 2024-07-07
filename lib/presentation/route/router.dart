import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'router.gr.dart';

// @singleton
// @Order(-1)
@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(
        //   path: '/',
        //   page: SplashRoute.page,
        // ),
        AutoRoute(
          path: '/',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/sign-in',
          page: SignInRoute.page,
        ),
        AutoRoute(
          path: '/agent-home',
          page: AgentHomeRoute.page,
        ),
        AutoRoute(
          path: '/create-receipt',
          page: CreateReceiptRoute.page,
        ),
        AutoRoute(
          path: '/agent-manage-invoice',
          page: ManageInvoiceRoute.page,
        ),
        AutoRoute(
          path: '/change-agent-password',
          page: AgentChangeMyPasswordRoute.page,
        ),
        AutoRoute(
          path: '/supervisor-home',
          page: SupervisorHomeRoute.page,
        ),
        AutoRoute(
          path: '/invoices-list',
          page: InvoicesListRoute.page,
        ),
        AutoRoute(path: '/invoice-details', page: InvoiceDetailsRoute.page),
        AutoRoute(
          path: '/supervisor-manage-agents',
          page: SupervisorManageAgentsRoute.page,
        ),
        AutoRoute(
          path: '/receipt-management',
          page: ReceiptManagementRoute.page,
        ),
        AutoRoute(
          path: '/MyHomePage',
          page: MyHomeRoute.page,
        ),
      ];
}
