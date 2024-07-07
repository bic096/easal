// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:easal/domain/invoices/invoice.dart' as _i15;
import 'package:easal/presentation/pages/home/agent_home_page.dart' as _i2;
import 'package:easal/presentation/pages/home/supervisor_home_page.dart'
    as _i11;
import 'package:easal/presentation/pages/home_page.dart' as _i7;
import 'package:easal/presentation/pages/invoices/agent/create_receipt_page.dart'
    as _i3;
import 'package:easal/presentation/pages/invoices/agent/manage_invoice_page.dart'
    as _i6;
import 'package:easal/presentation/pages/invoices/supervisor/invoice_details_page.dart'
    as _i4;
import 'package:easal/presentation/pages/invoices/supervisor/invoices_list_page.dart'
    as _i5;
import 'package:easal/presentation/pages/invoices/supervisor/receipt_management_page.dart'
    as _i8;
import 'package:easal/presentation/pages/splash/splash_page.dart' as _i10;
import 'package:easal/presentation/pages/users/agent/agent_change_my_password_page.dart'
    as _i1;
import 'package:easal/presentation/pages/users/sign_in_page.dart' as _i9;
import 'package:easal/presentation/pages/users/supervisor/supervisor_manage_agent_page.dart'
    as _i12;
import 'package:flutter/material.dart' as _i14;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AgentChangeMyPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<AgentChangeMyPasswordRouteArgs>(
          orElse: () => const AgentChangeMyPasswordRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AgentChangeMyPasswordPage(key: args.key),
      );
    },
    AgentHomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AgentHomePage(),
      );
    },
    CreateReceiptRoute.name: (routeData) {
      final args = routeData.argsAs<CreateReceiptRouteArgs>(
          orElse: () => const CreateReceiptRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CreateReceiptPage(key: args.key),
      );
    },
    InvoiceDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<InvoiceDetailsRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.InvoiceDetailsPage(
          key: args.key,
          invoice: args.invoice,
        ),
      );
    },
    InvoicesListRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.InvoicesListPage(),
      );
    },
    ManageInvoiceRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ManageInvoicePage(),
      );
    },
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>(
          orElse: () => const MyHomeRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ReceiptManagementRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ReceiptManagementPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignInPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashPage(),
      );
    },
    SupervisorHomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SupervisorHomePage(),
      );
    },
    SupervisorManageAgentsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SupervisorManageAgentsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AgentChangeMyPasswordPage]
class AgentChangeMyPasswordRoute
    extends _i13.PageRouteInfo<AgentChangeMyPasswordRouteArgs> {
  AgentChangeMyPasswordRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          AgentChangeMyPasswordRoute.name,
          args: AgentChangeMyPasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AgentChangeMyPasswordRoute';

  static const _i13.PageInfo<AgentChangeMyPasswordRouteArgs> page =
      _i13.PageInfo<AgentChangeMyPasswordRouteArgs>(name);
}

class AgentChangeMyPasswordRouteArgs {
  const AgentChangeMyPasswordRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'AgentChangeMyPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AgentHomePage]
class AgentHomeRoute extends _i13.PageRouteInfo<void> {
  const AgentHomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AgentHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AgentHomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreateReceiptPage]
class CreateReceiptRoute extends _i13.PageRouteInfo<CreateReceiptRouteArgs> {
  CreateReceiptRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          CreateReceiptRoute.name,
          args: CreateReceiptRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateReceiptRoute';

  static const _i13.PageInfo<CreateReceiptRouteArgs> page =
      _i13.PageInfo<CreateReceiptRouteArgs>(name);
}

class CreateReceiptRouteArgs {
  const CreateReceiptRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'CreateReceiptRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.InvoiceDetailsPage]
class InvoiceDetailsRoute extends _i13.PageRouteInfo<InvoiceDetailsRouteArgs> {
  InvoiceDetailsRoute({
    _i14.Key? key,
    required _i15.Invoice invoice,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          InvoiceDetailsRoute.name,
          args: InvoiceDetailsRouteArgs(
            key: key,
            invoice: invoice,
          ),
          initialChildren: children,
        );

  static const String name = 'InvoiceDetailsRoute';

  static const _i13.PageInfo<InvoiceDetailsRouteArgs> page =
      _i13.PageInfo<InvoiceDetailsRouteArgs>(name);
}

class InvoiceDetailsRouteArgs {
  const InvoiceDetailsRouteArgs({
    this.key,
    required this.invoice,
  });

  final _i14.Key? key;

  final _i15.Invoice invoice;

  @override
  String toString() {
    return 'InvoiceDetailsRouteArgs{key: $key, invoice: $invoice}';
  }
}

/// generated route for
/// [_i5.InvoicesListPage]
class InvoicesListRoute extends _i13.PageRouteInfo<void> {
  const InvoicesListRoute({List<_i13.PageRouteInfo>? children})
      : super(
          InvoicesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'InvoicesListRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ManageInvoicePage]
class ManageInvoiceRoute extends _i13.PageRouteInfo<void> {
  const ManageInvoiceRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ManageInvoiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ManageInvoiceRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MyHomePage]
class MyHomeRoute extends _i13.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i14.Key? key,
    String title = 'برنامج إيصال',
    List<_i13.PageRouteInfo>? children,
  }) : super(
          MyHomeRoute.name,
          args: MyHomeRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const _i13.PageInfo<MyHomeRouteArgs> page =
      _i13.PageInfo<MyHomeRouteArgs>(name);
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({
    this.key,
    this.title = 'برنامج إيصال',
  });

  final _i14.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i8.ReceiptManagementPage]
class ReceiptManagementRoute extends _i13.PageRouteInfo<void> {
  const ReceiptManagementRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ReceiptManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReceiptManagementRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignInPage]
class SignInRoute extends _i13.PageRouteInfo<void> {
  const SignInRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SupervisorHomePage]
class SupervisorHomeRoute extends _i13.PageRouteInfo<void> {
  const SupervisorHomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SupervisorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupervisorHomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SupervisorManageAgentsPage]
class SupervisorManageAgentsRoute extends _i13.PageRouteInfo<void> {
  const SupervisorManageAgentsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SupervisorManageAgentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupervisorManageAgentsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
