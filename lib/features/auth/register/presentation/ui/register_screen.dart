import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_bloc.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_models.dart';
import 'package:moth/features/auth/register/presentation/ui/widgets/code_form.dart';
import 'package:moth/features/auth/register/presentation/ui/widgets/mail_form.dart';
import 'package:moth/features/auth/register/presentation/ui/widgets/password_form.dart';
import 'package:moth/shared/widgets/m_animated_title/m_animated_title.dart';
import 'package:moth/shared/widgets/m_app_bar/m_app_bar.dart';
import 'package:moth/shared/widgets/m_scaffold/m_scaffold.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
      create: (_) => GetIt.I.get(),
      child: MScaffold(
        appBar: MAppBar(
            scrollController: scrollController,
            title: MAnimatedTitle(
              scrollController: scrollController,
              firstTitle: Text(
                'begin_road'.tr(),
                style: TextStyle(
                  color: Theme.of(context).colors.base,
                ),
              ),
              secondTitles: [
                Text(
                  'continue_register'.tr().split('//').first,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'continue_register'.tr().split('//').last,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            )),
        body: SafeArea(
          child: BlocConsumer<RegistrationBloc, RegistrationState>(
            listener: (_, state) {
              state.whenOrNull(successRegistration: (mail) {
                context.router.pop();
              });
            },
            builder: (context, state) {
              return CustomScrollView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                controller: scrollController,
                slivers: [
                  const MailForm(),
                  if (state is! InitialRegistration && state is! ErrorRegistration)
                    CodeForm(
                      onComplete: (String code, String email) {
                        context.read<RegistrationBloc>().add(RegistrationEvent.confirmCode(email: email, code: code));
                      },
                    ),
                  if (state is SuccessCodeRegistration ||
                      state is SuccessRegistration ||
                      state is LoadingFinishRegistration)
                    PasswordForm(
                      onComplete: (String email, String password) {
                        context
                            .read<RegistrationBloc>()
                            .add(RegistrationEvent.setPassword(email: email, password: password));
                      },
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
