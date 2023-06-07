import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/shared/formatters/mask_text_input_formatter.dart';
import 'package:moth/shared/widgets/m_card_number_field/models/card_model.dart';
import 'package:moth/shared/widgets/m_card_number_field/models/payment_system_icon_data.dart';
import 'package:moth/shared/widgets/m_card_number_field/widgets/card_holer_widget.dart';
import 'package:moth/shared/widgets/m_card_number_field/widgets/m_card_number_field.dart';
import 'package:moth/shared/widgets/m_card_number_field/widgets/remember_widget.dart';
import 'package:moth/shared/widgets/m_card_number_field/widgets/text_error_form.dart';
import 'package:moth/shared/widgets/m_disabled/m_disabled.dart';

class CardForm extends StatefulWidget {
  final PaymentSystemIconData? paymentSystemIconData;
  final BoxDecoration? decorationForm;
  final Function(CardModel card) onChange;
  final EdgeInsets? contentPadding;
  final CardModel? initialData;
  final bool enable;
  final String? errorText;
  final TextStyle? errorTextStyle;
  const CardForm({
    required this.onChange,
    this.enable = true,
    this.decorationForm,
    this.contentPadding,
    this.initialData,
    this.paymentSystemIconData,
    this.errorText,
    this.errorTextStyle,
    Key? key,
  }) : super(key: key);

  @override
  State<CardForm> createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  late final TextEditingController _controllerCard;
  late final TextEditingController _controllerDate;
  late final TextEditingController _controllerCVC;
  late final TextEditingController _controllerHolder;

  late final FocusNode _focusNodePan;
  late final FocusNode _focusNodeDate;
  late final FocusNode _focusNodeCvc;
  late final FocusNode _focusCardholder;

  late final ScrollController _scrollController;

  final _formKeyCard = GlobalKey<FormState>();

  final _maskPan = MaskTextInputFormatter(
    mask: '#### #### #### ####',
    filter: {'#': RegExp('[0-9]')},
  );
  final _maskDate = MaskTextInputFormatter(
    mask: '##/##',
    filter: {'#': RegExp('[0-9]')},
  );
  final _maskSecureCode = MaskTextInputFormatter(
    mask: '###',
    filter: {'#': RegExp('[0-9]')},
  );

  final _maskCardHolder = MaskTextInputFormatter(
    mask: '###################################',
    filter: {'#': RegExp(r'^[A-Za-z\s]')},
  );

  @override
  void initState() {
    final initialPan = widget.initialData == null ? null : _maskPan.maskText(widget.initialData!.pan);
    final initialDate = widget.initialData == null
        ? null
        : '${widget.initialData?.date.month.toString().padLeft(2, '0')}/${((widget.initialData?.date.year ?? DateTime.now().year) % 100).toString().padLeft(2, '0')}';
    final initialCardHolder = widget.initialData?.holder;

    _controllerCard = TextEditingController(text: initialPan);
    _controllerDate = TextEditingController(text: initialDate);
    _controllerCVC = TextEditingController();
    _controllerHolder = TextEditingController(text: initialCardHolder);

    _focusNodePan = FocusNode();
    _focusNodeDate = FocusNode();
    _focusNodeCvc = FocusNode();
    _focusCardholder = FocusNode();
    Future.delayed(const Duration(milliseconds: 180)).then((_) {
      if (mounted) {
        _focusNodePan.requestFocus();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNodePan.dispose();
    _focusNodeDate.dispose();
    _focusNodeCvc.dispose();
    _focusCardholder.dispose();
    _scrollController.dispose();
    _controllerCard.dispose();
    _controllerDate.dispose();
    _controllerCVC.dispose();
    _controllerHolder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyCard,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colors.counter,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              color: Theme.of(context).colors.base.withOpacity(.1),
              blurRadius: 10,
            ),
          ],
        ).copyWith(
          color: widget.decorationForm?.color,
          borderRadius: widget.decorationForm?.borderRadius,
          border: widget.decorationForm?.border,
          boxShadow: widget.decorationForm?.boxShadow,
          gradient: widget.decorationForm?.gradient,
          image: widget.decorationForm?.image,
        ),
        child: DisabledWidget(
          disabled: !widget.enable,
          child: Padding(
            padding: widget.contentPadding ?? const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CreditCardNumberInput(
                  enable: widget.enable,
                  controllerPan: _controllerCard,
                  controllerDate: _controllerDate,
                  controllerCvc: _controllerCVC,
                  formatterPan: _maskPan,
                  formatterCvc: _maskSecureCode,
                  formatterDate: _maskDate,
                  focusNodePan: _focusNodePan,
                  focusNodeDate: _focusNodeDate,
                  focusNodeCvc: _focusNodeCvc,
                  paymentSystemIconData: widget.paymentSystemIconData,
                ),
                const SizedBox(height: 12),
                CardHolderWidget(
                  enable: widget.enable,
                  focusNodeHolder: _focusCardholder,
                  controllerHolder: _controllerHolder,
                  formatterHolder: _maskCardHolder,
                ),
                TextErrorForm(
                  errorText: widget.errorText,
                  errorTextStyle: widget.errorTextStyle,
                ),
                if (widget.enable) ...[
                  const SizedBox(height: 12),
                  const RememberSwitcher(),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
