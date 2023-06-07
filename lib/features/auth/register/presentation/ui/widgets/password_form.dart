import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_bloc.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_models.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';
import 'package:moth/shared/widgets/m_text_field/m_text_field.dart';
import 'package:moth/shared/widgets/wrappers/m_box/m_box.dart';
import 'package:sliver_tools/sliver_tools.dart';

class PasswordForm extends StatefulWidget {
  final Function(String email, String password) onComplete;
  const PasswordForm({required this.onComplete, Key? key}) : super(key: key);

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  late final TextEditingController controllerPass;
  late final TextEditingController controllerPassRepeat;

  @override
  void initState() {
    controllerPass = TextEditingController()..addListener(_listener);
    controllerPassRepeat = TextEditingController()..addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    controllerPass.removeListener(_listener);
    controllerPassRepeat.removeListener(_listener);
    controllerPass.dispose();
    controllerPassRepeat.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        BlocBuilder<RegistrationBloc, RegistrationState>(builder: (context, state) {
          String mail = '';
          state.whenOrNull(
            successCode: (email) {
              mail = email;
            },
            successRegistration: (email) {
              mail = email;
            },
            awaitConfirmationCode: (email) {
              mail = email;
            },
            loadingFinish: (email) {
              mail = email;
            },
          );
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: MBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'create_password_hint'.tr(),
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 12),
                  MTextField(
                    controller: controllerPass,
                    obscure: true,
                    label: 'password'.tr(),
                    prefix: Icon(
                      Icons.lock_outline,
                      size: 16,
                      color: Theme.of(context).colors.secondary,
                    ),
                  ),
                  MTextField(
                    controller: controllerPassRepeat,
                    obscure: true,
                    label: 'repeat_password'.tr(),
                    prefix: Icon(
                      Icons.lock_outline,
                      size: 16,
                      color: Theme.of(context).colors.secondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text('password_rules'.tr()),
                  const SizedBox(height: 12),
                  MButton(
                    isLoading: state is LoadingFinishRegistration,
                    onPressed: isValidPassword()
                        ? () {
                            widget.onComplete(mail, controllerPass.text);
                          }
                        : null,
                    child: Text(
                      'complete'.tr(),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }

  bool isValidPassword() {
    final passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$');
    return controllerPass.text == controllerPassRepeat.text && passwordRegex.hasMatch(controllerPass.text);
  }

  void _listener() {
    setState(() {});
  }
}
