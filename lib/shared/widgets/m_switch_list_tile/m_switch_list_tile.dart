import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:moth/app/theme/m_theme.dart';

class MSwitchListTile extends StatelessWidget {
  final Widget title;
  final bool value;
  final Function(bool)? onChanged;
  final BorderRadius? borderRadius;

  const MSwitchListTile({
    required this.title,
    required this.value,
    required this.onChanged,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      splashColor: Colors.transparent,
      style: ListTileTheme.of(context).style,
      contentPadding: const EdgeInsets.all(0),
      shape: borderRadius != null ? RoundedRectangleBorder(borderRadius: borderRadius!) : null,
      minVerticalPadding: 16,
      title: title,
      onTap: onChanged != null
          ? () {
              onChanged!(!value);
            }
          : null,
      trailing: SizedBox(
        width: 40,
        child: FlutterSwitch(
          value: value,
          disabled: onChanged == null,
          onToggle: (value) {
            if (onChanged != null) {
              onChanged!(value);
            }
          },
          activeColor: Theme.of(context).switchTheme.trackColor?.resolve({MaterialState.selected}) ??
              Theme.of(context).colors.primary,
          padding: 2,
          height: 24,
          width: 40,
          toggleSize: 20,
          inactiveColor: Theme.of(context).colors.comment.withOpacity(0.6),
          inactiveToggleColor: Theme.of(context).colors.comment,
        ),
      ),
    );
  }
}
