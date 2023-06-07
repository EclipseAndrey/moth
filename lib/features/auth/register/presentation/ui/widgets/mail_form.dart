import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_bloc.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_models.dart';
import 'package:moth/features/auth/register/presentation/ui/widgets/mail_hints.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';
import 'package:moth/shared/widgets/m_text_field/m_text_field.dart';
import 'package:moth/shared/widgets/wrappers/m_box/m_box.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MailForm extends StatefulWidget {
  const MailForm({Key? key}) : super(key: key);

  @override
  State<MailForm> createState() => _MailFormState();
}

class _MailFormState extends State<MailForm> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(_textListener);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(_textListener);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        BlocBuilder<RegistrationBloc, RegistrationState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: MBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MTextField(
                      readonly: state is! InitialRegistration,
                      controller: controller,
                      label: 'email'.tr(),
                      prefix: Icon(
                        Icons.mail_outlined,
                        size: 16,
                        color: Theme.of(context).colors.secondary,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    MailHints(
                      controller: controller,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    if (state is InitialRegistration)
                      MButton(
                        onPressed: _isValidEmail(controller.text)
                            ? () {
                                context
                                    .read<RegistrationBloc>()
                                    .add(RegistrationEvent.confirmEmail(email: controller.text));
                              }
                            : null,
                        child: Text('continue'.tr()),
                      )
                    else
                      OutlinedMButton(
                        onPressed: _isValidEmail(controller.text)
                            ? () {
                                context.read<RegistrationBloc>().add(const RegistrationEvent.reset());
                              }
                            : null,
                        child: Text('edit_mail'.tr()),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void _textListener() {
    setState(() {});
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,6}$');
    return emailRegex.hasMatch(email);
  }
}
