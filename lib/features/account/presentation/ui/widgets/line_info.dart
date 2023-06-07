import 'package:flutter/material.dart';

class LineInfo extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const LineInfo({this.title, this.subtitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0, top: 12),
            child: Text(
              title!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
      ],
    );
  }
}
