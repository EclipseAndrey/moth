import 'package:flutter/material.dart';

class TextErrorForm extends StatelessWidget {
  final String? errorText;
  final TextStyle? errorTextStyle;
  const TextErrorForm({
    required this.errorText,
    required this.errorTextStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SizeTransition(
          axis: Axis.vertical,
          sizeFactor: animation,
          child: child,
        );
      },
      duration: const Duration(milliseconds: 150),
      child: (errorText != null)
          ? Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                errorText!,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.red).merge(errorTextStyle),
              ),
            )
          : const SizedBox(),
    );
  }
}
