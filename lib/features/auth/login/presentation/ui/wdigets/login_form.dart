import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moth/app/router/router.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/features/auth/login/presentation/ui/state/login_bloc/login_bloc.dart';
import 'package:moth/features/auth/login/presentation/ui/state/login_bloc/login_models.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';
import 'package:moth/shared/widgets/m_disabled/m_disabled.dart';
import 'package:moth/shared/widgets/m_text_field/m_text_field.dart';
import 'package:moth/shared/widgets/wrappers/m_box/m_box.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController controllerLogin = TextEditingController();
  final TextEditingController controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: AutofillGroup(
          child: Form(
            child: MBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'login'.tr(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  DisabledWidget(
                    disabled: state is LoadingLogin,
                    child: Column(
                      children: [
                        MTextField(
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.username],
                          textInputType: TextInputType.emailAddress,
                          controller: controllerLogin,
                          label: 'email'.tr(),
                          prefix: Icon(
                            Icons.mail_outlined,
                            size: 16,
                            color: Theme.of(context).colors.secondary,
                          ),
                          onChanged: (_) {
                            if (state is ErrorLogin) {
                              context.read<LoginBloc>().add(const LoginEvent.cleanState());
                            }
                          },
                        ),
                        MTextField(
                          obscure: true,
                          controller: controllerPass,
                          label: 'password'.tr(),
                          prefix: Icon(
                            Icons.lock_outline,
                            size: 16,
                            color: Theme.of(context).colors.secondary,
                          ),
                          onChanged: (_) {
                            if (state is ErrorLogin) {
                              context.read<LoginBloc>().add(const LoginEvent.cleanState());
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  AnimatedSwitcher(
                    transitionBuilder: (Widget child, Animation<double> animation) {
                      return SizeTransition(
                        axis: Axis.vertical,
                        sizeFactor: animation,
                        child: child,
                      );
                    },
                    duration: const Duration(milliseconds: 150),
                    child: (state is ErrorLogin)
                        ? Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              state.error,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(color: Theme.of(context).colors.danger),
                            ),
                          )
                        : const SizedBox(),
                  ),
                  const SizedBox(height: 24),
                  MButton(
                    isLoading: state is LoadingLogin,
                    onPressed: () {
                      context.read<LoginBloc>().add(
                            LoginEvent.loginWithEmailAndPassword(
                              email: controllerLogin.text,
                              password: controllerPass.text,
                            ),
                          );
                    },
                    child: Text('login'.tr()),
                  ),
                  const SizedBox(height: 4),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                          text: 'no_account_register'.tr().split('//').first,
                        ),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.router.push(const RegistrationRoute());
                              },
                            text: 'no_account_register'.tr().split('//').last,
                            style: TextStyle(color: Theme.of(context).colors.link)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
