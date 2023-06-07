import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_bloc.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_models.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';
import 'package:moth/shared/widgets/m_disabled/m_disabled.dart';
import 'package:moth/shared/widgets/wrappers/m_box/m_box.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CodeForm extends StatefulWidget {
  final Function(String code, String email) onComplete;
  const CodeForm({required this.onComplete, Key? key}) : super(key: key);

  @override
  State<CodeForm> createState() => _CodeFormState();
}

class _CodeFormState extends State<CodeForm> {
  late final StreamController<ErrorAnimationType> _controllerError;
  late final TextEditingController _controllerText;

  String code = '';
  Timer? _timer;
  int _timeToResend = 30;

  @override
  void initState() {
    _startTimer();
    _controllerError = StreamController();
    _controllerText = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MTheme>()!;

    return MultiSliver(
      children: [
        BlocBuilder<RegistrationBloc, RegistrationState>(
          key: const Key('code_form'),
          builder: (context, state) {
            if (state is InitialRegistration || state is ErrorRegistration) {
              return const SizedBox();
            }

            String mail = '';
            state.whenOrNull(
              errorCode: (error, email) {
                mail = email;
                _controllerText.clear();
                _controllerError.add(ErrorAnimationType.shake);
              },
              successCode: (email) {
                mail = email;
              },
              successRegistration: (email) {
                mail = email;
              },
              awaitConfirmationCode: (email) {
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
                      'code_from_mail'.tr(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'code_from_mail_desk'.tr(args: [mail]),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    DisabledWidget(
                      disabled: state is! AwaitConfirmCodeRegistration,
                      child: PinCodeTextField(
                        enabled: state is AwaitConfirmCodeRegistration,
                        keyboardType: TextInputType.number,
                        controller: _controllerText,
                        errorAnimationController: _controllerError,
                        animationType: AnimationType.none,
                        pinTheme: PinTheme(
                          fieldWidth: 48,
                          fieldHeight: 56,
                          activeFillColor: theme.colors.secondary.withOpacity(.2),
                          activeColor: theme.colors.counterLow,
                          selectedColor: theme.colors.base.withOpacity(0.16),
                          selectedFillColor: theme.colors.base.withOpacity(0.16),
                          inactiveColor: theme.colors.secondary.withOpacity(.2),
                          inactiveFillColor: theme.colors.secondary.withOpacity(.2),
                          borderRadius: BorderRadius.circular(12),
                          borderWidth: 1,
                          shape: PinCodeFieldShape.box,
                        ),
                        textStyle: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          height: 32 / 28,
                          color: theme.colors.base,
                        ),
                        cursorColor: theme.colors.primary,
                        enableActiveFill: true,
                        appContext: context,
                        length: 6,
                        onChanged: (val) {
                          code = val;
                          if (code.length == 6) {
                            widget.onComplete(code, mail);
                          }
                        },
                      ),
                    ),
                    if (state is! SuccessCodeRegistration && state is! SuccessRegistration)
                      MButton(
                        onPressed: (_timer != null)
                            ? null
                            : () {
                                _startTimer();
                              },
                        child: Text(
                          (_timer != null)
                              ? 'resent_code_time'.tr(args: [_timeToResend.toString()])
                              : 'resent_code'.tr(),
                        ),
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

  @override
  void dispose() {
    _timer?.cancel();
    _controllerError.close();
    super.dispose();
  }

  void _startTimer() {
    _timeToResend = 30;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_timeToResend == 1) {
        _stopTimer();
      }
      _timeToResend--;
      setState(() {});
    });
    setState(() {});
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
