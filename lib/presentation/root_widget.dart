import 'package:easal/application/invoices/cubit/list_receipt_types_cubit.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/application/users/manage_agent_cubit.dart';
import 'package:easal/injectable.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loader_overlay/loader_overlay.dart';

// @RoutePage()
class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckStarted())),
        BlocProvider(create: (context) => getIt<ListReceiptTypesCubit>()),
        BlocProvider(create: (context) => getIt<ManageAgentCubit>()),
        // BlocProvider<AuthCubit>(
        //   create: (context) => getIt<AuthCubit>()..authCheck(),
        // ),
      ],
      child: GlobalLoaderOverlay(
        overlayColor: Colors.black45,
        overlayOpacity: .9,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          // routerConfig: getIt<AppRouter>().config(),
          routerConfig: AppRouter().config(),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          supportedLocales: const [Locale('ar'), Locale('en')],
          locale: const Locale('ar'),
          title: 'Easal',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: kcAccent),
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
