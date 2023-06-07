import 'package:flutter/material.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final ScrollController? scrollController;
  final bool isSliver;

  const MAppBar({
    this.title,
    this.leading,
    this.actions,
    this.scrollController,
    this.isSliver = false,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      leading: leading,
      actions: actions,
    );
  }
}
