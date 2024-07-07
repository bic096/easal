import 'package:auto_route/auto_route.dart';
import 'package:easal/application/invoices/agent/invoice_notifier.dart';
import 'package:easal/application/invoices/agent/receipt_notifier.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/domain/users/account.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

@RoutePage()
class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state) {
            case ActionInProgress():
              {
                context.loaderOverlay.show();
              }

            case ActionFailure():
              {
                context.loaderOverlay.hide();
              }
            case Authenticated(:final account):
              {
                ref.read(invoiceNotifierProvider.notifier).ref
                  ..invalidateSelf()
                  ..invalidate(receiptNotifierProvider);

                if (account.role == Role.agent) {
                  if (context.mounted) {
                    context.router.replace(const AgentHomeRoute());
                  }
                } else {
                  context.router.replace(const SupervisorHomeRoute());
                }
                context.loaderOverlay.hide();
              }
            case _:
              {
                context.loaderOverlay.hide();
              }
          }
        },
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MainTextInputField(
                    labelText: 'إسم المستخدم',
                    controller: usernameController,
                  ),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  MainTextInputField(
                    labelText: 'كلمة المرور',
                    controller: passwordController,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  MainActionButton(
                    lableText: 'دخول',
                    onTap: () {
                      BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.signInStarted(usernameController.value.text,
                              passwordController.value.text));
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class MainActionButton extends StatelessWidget {
  const MainActionButton({
    super.key,
    required this.lableText,
    required this.onTap,
    this.height = 80,
    this.width = 420,
    this.radius = 40,
  });

  final VoidCallback onTap;
  final String lableText;
  final double width;
  final double height;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        overlayColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return kcAccentPressed;
          }

          if (states.contains(MaterialState.hovered)) {
            return kcAccentHover;
          }
          return kcAccent;
        }),
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: kcAccent.withAlpha(250),
              borderRadius: BorderRadius.circular(radius)),
          child: Center(
            child: Text(
              lableText,
              style: const TextStyle(
                  color: kcBackgroundW,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class MainTextInputField extends StatelessWidget {
  const MainTextInputField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    required this.controller,
    this.width = 420,
    this.height = 80,
    this.enabled = true,
    this.validator,
  });
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final double width;
  final double height;
  final bool enabled;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Container(
          padding: const EdgeInsets.only(bottom: 5),
          // height: height,
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
              TextFormField(
                validator: validator,
                enabled: enabled,
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                    labelText: labelText,
                    labelStyle: const TextStyle(
                        color: kcBodyText,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none)),
              ),
            ],
          )),
    );
  }
}
