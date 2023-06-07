import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';

class MBox extends StatelessWidget {
  final Widget child;
  const MBox({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colors.counter,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            color: Theme.of(context).colors.base.withOpacity(.1),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
