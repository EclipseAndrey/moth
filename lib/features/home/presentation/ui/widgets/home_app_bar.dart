import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moth/app/router/router.dart';
import 'package:moth/shared/widgets/m_app_bar/m_app_bar.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MAppBar(
      leading: MInkWell(
        onTap: () {
          context.router.push(const AccountRoute());
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.person_2_outlined,
            size: 24,
          ),
        ),
      ),
      actions: [
        MInkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.photo_camera_outlined,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
