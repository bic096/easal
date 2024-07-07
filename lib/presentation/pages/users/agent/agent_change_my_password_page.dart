import 'package:auto_route/auto_route.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/application/users/manage_agent_cubit.dart';
import 'package:easal/domain/users/account.dart';
import 'package:easal/injectable.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/pages/users/sign_in_page.dart';
import 'package:easal/presentation/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loader_overlay/loader_overlay.dart';

@RoutePage()
class AgentChangeMyPasswordPage extends HookWidget {
  AgentChangeMyPasswordPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final oldPassCtrl = useTextEditingController();
    final newPassCtrl = useTextEditingController();
    final confirmNewPassCtrl = useTextEditingController();
    final isPassWrong = useState(false);
    return MultiBlocListener(
      listeners: [
        BlocListener<ManageAgentCubit, ManageAgentState>(
          listenWhen: (previous, current) {
            return getIt<AuthBloc>().state.maybeMap(
                  orElse: () => false,
                  authenticated: (value) =>
                      value.account.role == Role.agent ? true : false,
                );
          },
          listener: (context, state) {
            state.map(
                initial: (_) {},
                actionFailure: (failure) {
                  context.loaderOverlay.hide();
                  failure.failure.mapOrNull(
                    invalidOrMissingRequiredField: (value) {
                      isPassWrong.value = true;
                    },
                  );
                  // if (failure.failure is IvalidOrMissingRequiredField) {

                  // }
                },
                actionInProgress: (_) {
                  context.loaderOverlay.show();
                },
                actionSuccess: (agent) {
                  context.loaderOverlay.hide();
                  // getIt<AuthBloc>().state.maybeMap(
                  //       orElse: () => throw Error(),
                  //       authenticated: (value) {
                  //         if (value.account.role == Role.agent) {
                  getIt<AuthBloc>().add(const AuthEvent.signOutStarted());
                  context.router.replaceAll([const SignInRoute()]);
                  // }
                  // },
                  // );
                });
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'إعادة تعيين كلمة المرور',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: kcBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: oldPassCtrl,
                    decoration: InputDecoration(
                            labelText: 'كلمة المرور القديمة',
                            errorText: isPassWrong.value
                                ? 'كلمة المرور غير صحيحة'
                                : null)
                        .deco(),
                    onChanged: (value) {
                      isPassWrong.value = false;
                    },
                  ).mainEx(),
                  // MainTextInputField(
                  //   labelText: 'كلمة المرور القديمة',
                  //   controller: oldPassCtrl,
                  // ),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  // MainTextInputField(
                  //   labelText: 'كلمة المرور الجديدة',
                  //   controller: newPassCtrl,
                  //   obscureText: true,
                  // ),
                  TextFormField(
                    controller: newPassCtrl,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'كلمة المرور الجديدة',
                    ).deco(),
                  ).mainEx(),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  TextFormField(
                    controller: confirmNewPassCtrl,
                    obscureText: true,
                    validator: (value) {
                      if (value != newPassCtrl.text) {
                        return 'كلمة المرور غير متطابقة';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'تأكيد كلمة المرور الجديدة',
                    ).deco(),
                  ).mainEx(),
                  // MainTextInputField(
                  //   labelText: 'تأكيد كلمة المرور الجديدة',
                  //   controller: confirmNewPassCtrl,
                  //   obscureText: true,
                  //   validator: (p0) {
                  //     if (p0 != newPassCtrl.text) {
                  //       return 'كلمة المرور غير متطابقة';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  MainActionButton(
                    lableText: 'تأكيد',
                    onTap: () async {
                      if (_formKey.currentState!.validate() &&
                          newPassCtrl.text == confirmNewPassCtrl.text) {
                        await getIt<ManageAgentCubit>()
                            .updateAgentPasswordByAgent(
                                getIt<AuthBloc>().state.maybeMap(
                                      orElse: () =>
                                          throw Error(), //TODO - hnadel proerly
                                      authenticated: (value) =>
                                          value.account.id,
                                    ),
                                oldPassCtrl.text,
                                newPassCtrl.text);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
