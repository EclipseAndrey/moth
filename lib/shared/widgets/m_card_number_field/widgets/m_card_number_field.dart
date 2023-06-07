import 'dart:math';

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/shared/formatters/mask_text_input_formatter.dart';
import 'package:moth/shared/widgets/m_card_number_field/models/payment_system_icon_data.dart';
import 'package:moth/shared/widgets/m_card_number_field/validations/luhn_algorithm.dart';
import 'package:moth/shared/widgets/m_card_number_field/widgets/payment_system_icon.dart';

class CreditCardNumberInput extends StatefulWidget {
  final PaymentSystemIconData? paymentSystemIconData;
  final TextEditingController controllerPan;
  final TextEditingController controllerDate;
  final TextEditingController controllerCvc;
  final MaskTextInputFormatter formatterPan;
  final MaskTextInputFormatter formatterDate;
  final MaskTextInputFormatter formatterCvc;
  final FocusNode focusNodePan;
  final FocusNode focusNodeDate;
  final FocusNode focusNodeCvc;
  final bool enable;

  const CreditCardNumberInput({
    required this.controllerDate,
    required this.controllerCvc,
    required this.controllerPan,
    required this.formatterPan,
    required this.formatterDate,
    required this.formatterCvc,
    required this.focusNodeCvc,
    required this.focusNodeDate,
    required this.focusNodePan,
    required this.enable,
    this.paymentSystemIconData,
    super.key,
  });

  @override
  _CreditCardNumberInputState createState() => _CreditCardNumberInputState();
}

class _CreditCardNumberInputState extends State<CreditCardNumberInput> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool errorCard = false;
  bool errorDate = false;
  bool errorCvc = false;

  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    widget.focusNodePan.addListener(checkFocus);
    widget.focusNodeDate.addListener(checkFocus);
    widget.focusNodeCvc.addListener(checkFocus);
    _panValidate(nextFocus: false);
  }

  @override
  void dispose() {
    _animationController.dispose();
    widget.focusNodePan.removeListener(checkFocus);
    widget.focusNodeDate.removeListener(checkFocus);
    widget.focusNodeCvc.removeListener(checkFocus);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colors.base,
              fontWeight: FontWeight.w500,
            ) ??
        const TextStyle();

    return RepaintBoundary(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colors.base.withOpacity(0.04),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: widget.focusNodePan.hasFocus || widget.focusNodeDate.hasFocus || widget.focusNodeCvc.hasFocus
                ? Theme.of(context).colors.primary
                : Colors.transparent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(width: 4),
              PaymentSystemIcon(
                cardNumber: widget.formatterPan.unmaskText(widget.controllerPan.text),
                iconData: widget.paymentSystemIconData,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  child: LayoutBuilder(builder: (context, constrains) {
                    final wTextPan = calculateSizePan(
                      widget.controllerPan.text,
                      textStyle,
                    );
                    final wHiddenTextPan = calculateSize(
                      widget.controllerPan.text,
                      textStyle,
                    );

                    final wPan =
                        (max((constrains.maxWidth / 3), wTextPan) + (constrains.maxWidth * (1 - _animation.value)))
                            .clamp(0, constrains.maxWidth)
                            .toDouble();
                    final wDate = (((constrains.maxWidth - wPan) / 2) * (_animation.value));
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            _animationController.reverse();
                            widget.focusNodePan.requestFocus();
                          },
                          child: SizedBox(
                            width: wPan,
                            child: AnimatedBuilder(
                              animation: _animation,
                              builder: (context, child) {
                                return Transform.translate(
                                  offset: Offset(-wHiddenTextPan * _animation.value, 0.0),
                                  child: child,
                                );
                              },
                              child: TextField(
                                enabled: widget.enable,
                                inputFormatters: [widget.formatterPan],
                                scrollPadding: EdgeInsets.zero,
                                maxLines: 1,
                                onTapOutside: (r) {
                                  FocusScope.of(context).unfocus();
                                  _panValidate(nextFocus: false);
                                },
                                controller: widget.controllerPan,
                                focusNode: widget.focusNodePan,
                                keyboardType: TextInputType.number,
                                style: textStyle.copyWith(
                                    color: errorCard ? Theme.of(context).colors.danger : Theme.of(context).colors.base),
                                decoration: const InputDecoration(
                                  fillColor: Colors.transparent,
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  hintText: '1234 5678 9012 3456',
                                  border: InputBorder.none,
                                ),
                                onChanged: (String value) {
                                  _panValidate();
                                },
                                onTap: () {
                                  _animationController.reverse();
                                },
                                onSubmitted: (String value) {
                                  setState(() {
                                    final lastFour = value.substring(value.length - 4);
                                    widget.controllerPan.text = lastFour;
                                  });
                                  FocusScope.of(context).nextFocus();
                                },
                              ),
                            ),
                          ),
                        ),
                        if ((_animation.value) > 0)
                          SizedBox(
                            width: wDate,
                            child: TextField(
                              enabled: widget.enable,
                              focusNode: widget.focusNodeDate,
                              controller: widget.controllerDate,
                              inputFormatters: [widget.formatterDate],
                              scrollPadding: EdgeInsets.zero,
                              maxLines: 1,
                              style: textStyle.copyWith(
                                  color: errorDate ? Theme.of(context).colors.danger : Theme.of(context).colors.base),
                              onTapOutside: (_) {
                                FocusScope.of(context).unfocus();
                              },
                              onChanged: _dateValidate,
                              decoration: InputDecoration(
                                fillColor: Colors.transparent,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                hintText: 'card_date'.tr(),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        if ((_animation.value) > 0)
                          SizedBox(
                            width: wDate,
                            child: TextField(
                              enabled: widget.enable,
                              textAlign: TextAlign.right,
                              focusNode: widget.focusNodeCvc,
                              controller: widget.controllerCvc,
                              inputFormatters: [widget.formatterCvc],
                              scrollPadding: EdgeInsets.zero,
                              maxLines: 1,
                              style: textStyle.copyWith(
                                  color: errorCvc ? Theme.of(context).colors.danger : Theme.of(context).colors.base),
                              onTapOutside: (_) {
                                FocusScope.of(context).unfocus();
                              },
                              onChanged: secureValidate,
                              decoration: const InputDecoration(
                                fillColor: Colors.transparent,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                hintText: 'CVC',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }

  double calculateSize(String string, TextStyle textStyle) {
    ///ширина сдвига
    if (string.length < 14) return 0;
    final textPainter = TextPainter(
      text: TextSpan(
        text: string.substring(0, 14),
        style: textStyle,
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.width;
  }

  double calculateSizePan(String string, TextStyle textStyle) {
    /// для итоговой ширины
    final textPainter = TextPainter(
      text: TextSpan(
        text: string,
        style: textStyle,
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.width;
  }

  void _panValidate({bool nextFocus = true}) async {
    final value = widget.formatterPan.unmaskText(widget.controllerPan.text);

    if (value.length == 16) {
      if (luhnAlgorithm(value)) {
        _animationController.forward();
        if (nextFocus) {
          widget.focusNodeDate.requestFocus();
        }
      } else {
        if (!errorCard) {
          setState(() {
            errorCard = true;
          });
        }
      }
    } else {
      if (errorCard) {
        setState(() {
          errorCard = false;
        });
      }
      _animationController.reverse();
    }
  }

  void _dateValidate(String value) {
    if (widget.formatterDate.getMaskedText().length == 5) {
      final dates = value.split('/');
      final year = int.parse(dates[1]) + 2000;
      final month = int.parse(dates[0]);

      if (year < DateTime.now().year) {
        if (!errorDate) {
          setState(() {
            errorDate = true;
          });
        }
      } else if (year == DateTime.now().year && month < DateTime.now().month) {
        if (!errorDate) {
          setState(() {
            errorDate = true;
          });
        }
      } else if (month > 12 || month <= 0) {
        if (!errorDate) {
          setState(() {
            errorDate = true;
          });
        }
      } else {
        if (errorDate) {
          setState(() {
            errorDate = false;
          });
        }
        FocusScope.of(context).nextFocus();
      }
    } else {
      if (errorDate) {
        setState(() {
          errorDate = false;
        });
      }
    }
  }

  void secureValidate(String value) {
    if (value.length == 3) {
      FocusScope.of(context).nextFocus();
    }
  }

  void checkFocus() {
    if (widget.focusNodePan.hasFocus || widget.focusNodeDate.hasFocus || widget.focusNodeCvc.hasFocus) {
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
