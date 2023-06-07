import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/shared/widgets/m_disabled/m_disabled.dart';
import 'package:moth/shared/widgets/m_text_field/m_input_border.dart';

class MTextField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final bool? obscure;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final bool hideError;
  final String? hint;
  final void Function(String value)? onChanged;
  final int? minLines;
  final int? maxLines;
  final bool autofocus;
  final TextStyle? style;
  final bool readonly;
  final bool clickControllerd;
  final String? initialValue;
  final Color? fillColor;
  final FocusNode? focusNode;
  final bool validateOnLoad;
  final bool alwaysValidate;
  final TextCapitalization textCapitalization;
  final AutovalidateMode autovalidateMode;
  final String? placeholder;
  final List<String>? autofillHints;
  final TextInputAction? textInputAction;

  const MTextField({
    required this.label,
    this.controller,
    this.textInputType,
    this.obscure,
    this.prefix,
    this.suffix,
    this.validator,
    this.hideError = false,
    this.hint,
    this.onChanged,
    this.minLines,
    this.maxLines = 1,
    this.autofocus = false,
    this.style,
    this.readonly = false,
    this.clickControllerd = false,
    this.initialValue,
    this.fillColor,
    this.focusNode,
    this.validateOnLoad = false,
    this.alwaysValidate = false,
    this.textCapitalization = TextCapitalization.none,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.placeholder,
    this.autofillHints,
    this.textInputAction,
    super.key,
  });

  @override
  State<MTextField> createState() => _MTextFieldState();
}

class _MTextFieldState extends State<MTextField> {
  final GlobalKey<FormFieldState> _formField = GlobalKey();
  final Set<MaterialState> _states = {};
  bool obscure = false;
  bool changed = false;
  String? initialValue;

  @override
  void initState() {
    changed = widget.validateOnLoad;
    if (widget.obscure != null) {
      obscure = widget.obscure!;
    }
    if (widget.initialValue != null) {
      initialValue = widget.initialValue;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MTextField oldWidget) {
    if (widget.obscure != null && obscure != widget.obscure) {
      obscure = widget.obscure!;
    }
    if (widget.initialValue != oldWidget.initialValue) {
      initialValue = widget.initialValue;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final textField = TextFormField(
      textInputAction: widget.textInputAction,
      autofillHints: widget.autofillHints,
      initialValue: initialValue,
      key: _formField,
      enableSuggestions: false,
      autofocus: widget.autofocus,
      autocorrect: false,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      readOnly: widget.readonly,
      enabled: !widget.readonly,
      focusNode: widget.focusNode,
      onChanged: (value) {
        changed = true;
        final hasError = _formField.currentState?.hasError ?? false;
        if (hasError) {
          _states.add(MaterialState.error);
        } else {
          _states.remove(MaterialState.error);
        }
        setState(() {});
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
      },
      textCapitalization: widget.textCapitalization,
      obscureText: obscure,
      obscuringCharacter: '●',
      validator: widget.validator,
      autovalidateMode: widget.autovalidateMode,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.error)) {
          return Theme.of(context).colors.danger;
        }
        return Theme.of(context).colors.primary;
      }).resolve(_states),
      decoration: InputDecoration(
        label: widget.placeholder == null || (widget.controller?.text.isNotEmpty ?? true)
            ? Text(widget.label)
            : Text(widget.placeholder!),
        errorStyle: (widget.hideError || widget.controller != null) && !widget.alwaysValidate
            ? const TextStyle(fontSize: 0)
            : null,
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffix,
        disabledBorder: MInputBorder.colored(Colors.white.withOpacity(0.04)),
        fillColor: widget.fillColor ?? Theme.of(context).colors.counterLow,
      ),
      style: obscure
          ? TextStyle(
              fontSize: widget.style?.fontSize ?? Theme.of(context).textTheme.titleLarge?.fontSize ?? 19,
              height: widget.style?.height ?? Theme.of(context).textTheme.titleLarge?.height ?? 19 / 25,
              color: Theme.of(context).colors.base,
              fontWeight: FontWeight.w500,
            )
          : widget.style ??
              Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colors.base,
                    fontWeight: FontWeight.w500,
                  ),
    );

    return DisabledWidget(
      disabled: widget.readonly && !widget.clickControllerd,
      child: Padding(
        padding: Theme.of(context).options.formInputMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            textField,
            if (!widget.hideError &&
                widget.validator != null &&
                widget.controller != null &&
                changed &&
                widget.validator!(widget.controller!.text) != null &&
                !widget.alwaysValidate)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.validator!(widget.controller!.text).toString(),
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: Theme.of(context).colors.danger,
                            ),
                      ),
                    ),
                  ],
                ),
              )
            else if (widget.hint != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  widget.hint!,
                  textAlign: TextAlign.right,
                  style: Theme.of(context).text.textInputHint,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
