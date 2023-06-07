import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/shared/formatters/mask_text_input_formatter.dart';

class CardHolderWidget extends StatefulWidget {
  final FocusNode focusNodeHolder;
  final TextEditingController controllerHolder;
  final MaskTextInputFormatter formatterHolder;
  final bool enable;

  const CardHolderWidget({
    required this.focusNodeHolder,
    required this.controllerHolder,
    required this.formatterHolder,
    required this.enable,
    Key? key,
  }) : super(key: key);

  @override
  State<CardHolderWidget> createState() => _CardHolderWidgetState();
}

class _CardHolderWidgetState extends State<CardHolderWidget> {
  bool hasFocus = false;

  @override
  void initState() {
    widget.focusNodeHolder.addListener(checkFocus);
    super.initState();
  }

  @override
  void dispose() {
    widget.focusNodeHolder.removeListener(checkFocus);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).colors.base,
          fontWeight: FontWeight.w500,
        );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colors.base.withOpacity(0.04),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: widget.focusNodeHolder.hasFocus ? Theme.of(context).colors.primary : Colors.transparent,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 8, 16, 8),
        child: TextField(
          enabled: widget.enable,
          focusNode: widget.focusNodeHolder,
          controller: widget.controllerHolder,
          inputFormatters: [widget.formatterHolder],
          scrollPadding: EdgeInsets.zero,
          maxLines: 1,
          style: textStyle?.copyWith(color: Theme.of(context).colors.base),
          onTapOutside: (_) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            isDense: true,
            contentPadding: EdgeInsets.zero,
            hintText: 'holder'.tr(),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  void checkFocus() {
    if (widget.focusNodeHolder.hasFocus) {
      if (!hasFocus) {
        setState(() {
          hasFocus = true;
        });
      }
    } else {
      if (hasFocus) {
        setState(() {
          hasFocus = false;
        });
      }
    }
  }
}
