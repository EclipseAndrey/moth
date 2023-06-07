import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/shared/widgets/m_button/m_button.dart';

class MailHints extends StatefulWidget {
  final TextEditingController controller;
  const MailHints({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<MailHints> createState() => _MailHintsState();
}

class _MailHintsState extends State<MailHints> {
  final List<String> hintMails = ['@gmail.com', '@mail.ru', '@yandex.ru', '@yahoo.com', '@protonmail.com'];

  @override
  void initState() {
    widget.controller.addListener(_controllerListener);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_controllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final adr = <String>[];
    if (!(widget.controller.text.contains('@') &&
            widget.controller.text.split('@').last.contains('.') &&
            widget.controller.text.split('').last != '.') &&
        widget.controller.text.isNotEmpty) {
      for (var element in hintMails) {
        final step = element
            .split(widget.controller.text.contains('@')
                ? (widget.controller.text.split('@').last.contains('.') ? '.' : '@')
                : '\\')
            .last;
        if (!adr.contains(step)) {
          adr.add(step);
        }
      }
    }

    return AnimatedSwitcher(
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SizeTransition(
          axis: Axis.vertical,
          sizeFactor: animation,
          child: child,
        );
      },
      duration: const Duration(milliseconds: 150),
      child: Wrap(
        key: Key(adr.toString()),
        spacing: 8.0, // расстояние между элементами по горизонтали
        runSpacing: 4.0, // расстояние между элементами по вертикали
        children: List.generate(adr.length, (index) {
          return MInkWell(
            onTap: () {
              widget.controller.text = widget.controller.text + adr[index];
              widget.controller.selection =
                  TextSelection.fromPosition(TextPosition(offset: widget.controller.text.length));
            },
            child: DecoratedBox(
              decoration:
                  BoxDecoration(color: Theme.of(context).colors.counterLowest, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                child: Text(
                  adr[index],
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colors.counterLow),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  void _controllerListener() {
    setState(() {});
  }
}
