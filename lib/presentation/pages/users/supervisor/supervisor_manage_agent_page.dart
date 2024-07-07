import 'package:auto_route/auto_route.dart';
import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/application/users/list_agents_cubit.dart';
import 'package:easal/application/users/manage_agent_cubit.dart';
import 'package:easal/domain/users/account.dart';
import 'package:easal/injectable.dart';
import 'package:easal/presentation/colors/colors.dart';
import 'package:easal/presentation/ex/textformfield_ex.dart';
import 'package:easal/presentation/pages/users/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:side_sheet/side_sheet.dart';

@RoutePage()
class SupervisorManageAgentsPage extends HookWidget {
  const SupervisorManageAgentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundD,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 100,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'إدارة المتحصلين',
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
                            body: AddAgentWidget());
                      },
                      width: 200,
                      height: 50,
                    ),
                  ],
                )),
            const Divider(),
            const SizedBox(height: 0),
            SizedBox(
              height: MediaQuery.of(context).size.height - 180,
              child: BlocBuilder<ListAgentsCubit, ListAgentsState>(
                bloc: getIt<ListAgentsCubit>(),
                builder: (context, state) {
                  return state.map(initial: (_) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }, actionFailure: (failure) {
                    return Center(
                      child: Text(failure.failure.map(
                          invalidUserNameOrPassword: (_) =>
                              'invalidUserNameOrPassword',
                          invalidOrMissingRequiredField: (_) =>
                              'invalidOrMissingRequiredField',
                          resourseNotFound: (_) => 'resourseNotFound',
                          noSignedInUser: (_) => 'noSignedInUser',
                          unauthorizedOperation: (_) => 'unauthorizedOperation',
                          serverError: (_) => 'serverError')),
                    );
                  }, actionInProgress: (_) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }, actionSuccess: (accounts) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: accounts.accounts.length,
                      itemBuilder: (c, i) {
                        if (accounts.accounts.isEmpty) {
                          return const Center(
                            child: Text('لاتوجد بيانات'),
                          );
                        }
                        final account = accounts.accounts[i];
                        return GestureDetector(
                          onTap: () {
                            SideSheet.left(
                                context: context,
                                width: MediaQuery.of(context).size.width * 0.4,
                                sheetColor: kcBackgroundD,
                                barrierDismissible: false,
                                body: UpdateAgentWidget(account));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 400,
                                height: 50,
                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: kcTextFieldsAndButtonsBackground,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      account.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: kcBodyText,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddAgentWidget extends HookWidget {
  AddAgentWidget({
    super.key,
  });
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final nameCtrl = useTextEditingController();
    final usernameCtrl = useTextEditingController();
    final passwdCtrl = useTextEditingController();
    final confirmPassCtrl = useTextEditingController();
    final usernameExistCtrl = useState(false);
    return BlocListener<ManageAgentCubit, ManageAgentState>(
      bloc: getIt<ManageAgentCubit>(),
      listener: (context, state) {
        state.map(
          initial: (_) {},
          actionFailure: (failure) {
            context.loaderOverlay.hide();
            failure.failure.maybeMap(
                orElse: () {},
                invalidOrMissingRequiredField: (failure) {
                  usernameExistCtrl.value = true;
                },
                resourseNotFound: (_) {},
                noSignedInUser: (_) {},
                unauthorizedOperation: (_) {},
                serverError: (_) {});
          },
          actionInProgress: (_) {
            usernameExistCtrl.value = false;
            context.loaderOverlay.show();
          },
          actionSuccess: (accOption) {
            usernameExistCtrl.value = false;
            context.loaderOverlay.hide();
            context.router.pop();
            getIt<ListAgentsCubit>().listAgentsAccountsBySupervisor(
                getIt<AuthBloc>().state.maybeWhen(
                      orElse: () => throw Error(), //TODO -
                      authenticated: (account) => account,
                    ));
          },
        );
      },
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: const Icon(Icons.close))),
              const Center(
                child: Text(
                  'إضافة متحصل',
                  style: TextStyle(
                    color: kcBodyText,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameCtrl,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'يجب تعبئة الحقل';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'إسم المتحصل',
                ).deco(),
              ).mainEx(),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: usernameCtrl,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'يجب تعبئة الحقل';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'إسم المستخدم',
                  errorText: usernameExistCtrl.value == true
                      ? 'إسم المستخدم محجوز'
                      : null,
                ).deco(),
              ).mainEx(),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwdCtrl,
                obscureText: true,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'يجب تعبئة الحقل';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'كلمة المرور',
                ).deco(),
              ).mainEx(),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: confirmPassCtrl,
                obscureText: true,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'يجب تعبئة الحقل';
                  }
                  if (value != passwdCtrl.text) {
                    return 'كلمة المرور غير مطابقة';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'تأكيد كلمة المرور',
                ).deco(),
              ).mainEx(),
              40.veri,
              MainActionButton(
                width: 200,
                height: 50,
                lableText: 'إضافة',
                onTap: () {
                  if (_formKey.currentState!.validate() &&
                      passwdCtrl.text == confirmPassCtrl.text) {
                    getIt<ManageAgentCubit>().createAgentAccountBySupervisor(
                      getIt<AuthBloc>().state.maybeWhen(
                            orElse: () => throw Error(), //TODO -
                            authenticated: (account) => account,
                          ),
                      Account(
                        id: '',
                        number: 0,
                        userName: usernameCtrl.text,
                        name: nameCtrl.text,
                        role: Role.agent,
                      ),
                      passwdCtrl.text,
                    );
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpdateAgentWidget extends HookWidget {
  UpdateAgentWidget(this.agent, {super.key});
  final Account agent;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final nameCtrl = useTextEditingController(text: agent.name);
    final usernameCtrl = useTextEditingController(text: agent.userName);
    final passwdCtrl = useTextEditingController();
    final confirmPassCtrl = useTextEditingController();
    final usernameExistCtrl = useState(false);
    final updatePasswordCtrl = useState(false);
    return BlocListener<ManageAgentCubit, ManageAgentState>(
      bloc: getIt<ManageAgentCubit>(),
      listener: (context, state) {
        state.map(
          initial: (_) {},
          actionFailure: (failure) {
            context.loaderOverlay.hide();
            failure.failure.maybeMap(
                orElse: () {},
                invalidOrMissingRequiredField: (failure) {
                  usernameExistCtrl.value = true;
                },
                resourseNotFound: (_) {},
                noSignedInUser: (_) {},
                unauthorizedOperation: (_) {},
                serverError: (_) {});
          },
          actionInProgress: (_) {
            usernameExistCtrl.value = false;
            context.loaderOverlay.show();
          },
          actionSuccess: (accOption) {
            usernameExistCtrl.value = false;
            context.loaderOverlay.hide();
            context.router.pop();
            getIt<ListAgentsCubit>().listAgentsAccountsBySupervisor(
                getIt<AuthBloc>().state.maybeWhen(
                      orElse: () => throw Error(), //TODO -
                      authenticated: (account) => account,
                    ));
          },
        );
      },
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: const Icon(Icons.close))),
              const Center(
                child: Text(
                  'تحديث متحصل',
                  style: TextStyle(
                    color: kcBodyText,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameCtrl,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'يجب تعبئة الحقل';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'إسم المتحصل',
                ).deco(),
              ).mainEx(),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: usernameCtrl,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'يجب تعبئة الحقل';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'إسم المستخدم',
                  errorText: usernameExistCtrl.value == true
                      ? 'إسم المستخدم محجوز'
                      : null,
                ).deco(),
              ).mainEx(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Switch(
                        value: updatePasswordCtrl.value,
                        onChanged: (val) {
                          updatePasswordCtrl.value = val;
                        }),
                    20.hori,
                    const Text(
                      'تحديث كلمة المرور',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              updatePasswordCtrl.value
                  ? const SizedBox(
                      height: 20,
                    )
                  : const SizedBox(),
              updatePasswordCtrl.value == true
                  ? TextFormField(
                      controller: passwdCtrl,
                      obscureText: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'يجب تعبئة الحقل';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'كلمة المرور',
                      ).deco(),
                    ).mainEx()
                  : const SizedBox(),
              updatePasswordCtrl.value
                  ? const SizedBox(
                      height: 20,
                    )
                  : const SizedBox(),
              updatePasswordCtrl.value == true
                  ? TextFormField(
                      controller: confirmPassCtrl,
                      obscureText: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'يجب تعبئة الحقل';
                        }
                        if (value != passwdCtrl.text) {
                          return 'كلمة المرور غير مطابقة';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'تأكيد كلمة المرور',
                      ).deco(),
                    ).mainEx()
                  : const SizedBox(),
              40.veri,
              MainActionButton(
                width: 200,
                height: 50,
                lableText: 'تحديث',
                onTap: () {
                  if (_formKey.currentState!.validate() &&
                      passwdCtrl.text == confirmPassCtrl.text) {
                    getIt<ManageAgentCubit>().updateAgentAccountBySupervisor(
                      getIt<AuthBloc>().state.maybeWhen(
                            orElse: () => throw Error(), //TODO -
                            authenticated: (account) => account,
                          ),
                      agent.id,
                      agentAccount: Account(
                        id: '',
                        number: 0,
                        userName: usernameCtrl.text,
                        name: nameCtrl.text,
                        role: Role.agent,
                      ),
                      agentPassword: updatePasswordCtrl.value == true
                          ? passwdCtrl.text
                          : null,
                    );
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
