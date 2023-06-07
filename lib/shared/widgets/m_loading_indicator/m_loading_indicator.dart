import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';

class MLoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;

  const MLoadingIndicator({
    super.key,
    this.size = 20,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            color: color ?? Theme.of(context).colors.primary,
            strokeWidth: 3.0,
          ),
        ),
      ],
    );
  }
}
