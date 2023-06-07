import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/features/auth/login/presentation/ui/state/login_bloc/login_bloc.dart';
import 'package:moth/features/auth/login/presentation/ui/wdigets/login_form.dart';
import 'package:moth/shared/widgets/m_app_bar/m_app_bar.dart';
import 'package:moth/shared/widgets/m_scaffold/m_scaffold.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => GetIt.I.get(),
      child: MScaffold(
        appBar: MAppBar(
          title: Text(
            'welcome'.tr(),
            style: TextStyle(color: Theme.of(context).colors.base),
          ),
        ),
        body: const SafeArea(
          child: Center(
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
