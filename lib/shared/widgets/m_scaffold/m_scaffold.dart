import 'package:flutter/material.dart';

class MScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  const MScaffold({
    this.appBar,
    this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: appBar,
        body: body,
      ),
    );
  }
}
