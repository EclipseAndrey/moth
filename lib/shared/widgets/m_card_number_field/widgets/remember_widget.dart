import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/shared/widgets/m_switch_list_tile/m_switch_list_tile.dart';

class RememberSwitcher extends StatefulWidget {
  const RememberSwitcher({Key? key}) : super(key: key);

  @override
  State<RememberSwitcher> createState() => _RememberSwitcherState();
}

class _RememberSwitcherState extends State<RememberSwitcher> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MSwitchListTile(
          borderRadius: BorderRadius.circular(12),
          title: Text(
            tr('remember_card'),
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colors.base),
          ),
          value: value,
          onChanged: (val) {
            setState(() {
              value = val;
            });
          },
        ),
        Text(
          'remember_card_desk'.tr(args: ['app_name'.tr()]),
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colors.secondary),
        ),
      ],
    );
  }
}
