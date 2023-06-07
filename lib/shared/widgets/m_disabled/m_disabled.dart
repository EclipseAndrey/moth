import 'package:flutter/material.dart';

class DisabledWidget extends StatelessWidget {
  final bool disabled;
  final Widget child;

  const DisabledWidget({
    required this.child,
    required this.disabled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: Opacity(
        opacity: disabled ? 0.4 : 1.0,
        child: child,
      ),
    );
  }
}
