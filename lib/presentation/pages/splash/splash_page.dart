import 'package:auto_route/auto_route.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/domain/users/account.dart';
import 'package:easal/presentation/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   getIt<AuthBloc>().add(const AuthEvent.authCheckStarted());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        //
        //   switch (state) {
        //     case AuthState.authenticated:
        //       if (kDebugMode) {
        //         print('authenticated ---------------');
        //       }
        //     // if (account.account.role == Role.agent) {
        //     // } else {}

        //     case AuthState.unauthenticated:
        //       if (kDebugMode) {
        //         print('unauthenticated ---------------');
        //       }
        //       context.router.replace(const SignInRoute());
        //     default:
        //       if (kDebugMode) {
        //         print('orelse ---------------');
        //       }
        //   }
        // },

        state.maybeMap(
          orElse: () {},
          initial: (value) {},
          actionInProgress: (value) {},
          authenticated: (account) {
            if (account.account.role == Role.agent) {
              // await getIt<ListReceiptTypesCubit>().listReceiptTypes();
              if (context.mounted) {
                context.router.replace(const AgentHomeRoute());
              }
            } else {
              context.router.replace(const SupervisorHomeRoute());
            }
          },
          unauthenticated: (_) {
            context.router.replace(const SignInRoute());
          },
        );
      },
      builder: (h, y) => const Scaffold(
        body: SizedBox(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
