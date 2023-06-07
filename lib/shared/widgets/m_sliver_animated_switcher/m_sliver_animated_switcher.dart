import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MSliverAnimatedSwitcher extends StatelessWidget {
  /// The child to pass to the [AnimatedSwitcher]
  final Widget child;

  /// The duration to pass to the [AnimatedSwitcher]
  final Duration duration;

  const MSliverAnimatedSwitcher({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 150),
  }) : super(key: key);

  static Widget defaultLayoutBuilder(Widget? currentChild, List<Widget> previousChildren) {
    return SliverStack(
      children: <Widget>[
        ...previousChildren,
        if (currentChild != null) currentChild,
      ],
    );
  }

  static Widget defaultTransitionBuilder(Widget child, Animation<double> animation) =>
      SliverFadeTransition(opacity: animation, sliver: child);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      layoutBuilder: defaultLayoutBuilder,
      transitionBuilder: defaultTransitionBuilder,
      child: child,
    );
  }
}
