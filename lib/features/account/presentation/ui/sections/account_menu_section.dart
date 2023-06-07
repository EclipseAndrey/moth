import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:moth/app/router/router.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AccountMenuSection extends StatelessWidget {
  const AccountMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: OutlinedMButton(
            onPressed: () {
              context.router.push(const DiscoveryTestRoute());
            },
            child: Text(
              'add_device'.tr(),
            ),
          ),
        )
      ],
    );
  }
}
