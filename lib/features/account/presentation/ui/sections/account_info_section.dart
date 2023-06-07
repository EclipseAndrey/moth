import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:moth/features/account/presentation/ui/widgets/line_info.dart';
import 'package:moth/shared/widgets/wrappers/m_box/m_box.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AccountInfoSection extends StatelessWidget {
  const AccountInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: MBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LineInfo(
                  subtitle: 'My name',
                ),
                LineInfo(
                  title: 'create_date'.tr(),
                  subtitle: '12.12.2023',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
