import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:moth/app/router/router.dart';
import 'package:moth/core/auth/auth_repository/auth_repository.dart';
import 'package:moth/features/account/presentation/ui/sections/account_info_section.dart';
import 'package:moth/features/account/presentation/ui/sections/account_menu_section.dart';
import 'package:moth/shared/widgets/m_app_bar/m_app_bar.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'account'.tr(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          MInkWell(
            onTap: () async {
              GetIt.I.get<IAuthRepository>().unAuth();
              final router = context.router;
              await Future.delayed(const Duration(milliseconds: 150));
              router.replaceAll(
                [
                  const HomeRoute(),
                ],
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.logout_outlined,
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: const CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 16.0),
            sliver: AccountInfoSection(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 16.0),
            sliver: AccountMenuSection(),
          ),
        ],
      ),
    );
  }
}
