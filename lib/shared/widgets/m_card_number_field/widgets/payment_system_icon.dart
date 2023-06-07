import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moth/shared/widgets/m_card_number_field/models/payment_system_icon_data.dart';
import 'package:moth/shared/widgets/m_card_number_field/validations/determine_payment_system.dart';

class PaymentSystemIcon extends StatelessWidget {
  final String cardNumber;
  final PaymentSystemIconData? iconData;

  const PaymentSystemIcon({required this.cardNumber, required this.iconData, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (iconData == null) {
      return const Icon(
        Icons.credit_card_outlined,
        size: 24,
      );
    }

    return SizedBox(
      height: 24,
      width: 24,
      child: SvgPicture.asset(
        getIconPath(determinePaymentSystem(cardNumber), iconData!),
      ),
    );
  }

  String getIconPath(String system, PaymentSystemIconData iconData) {
    switch (system) {
      case 'MASTERCARD':
        return iconData.mastercardPath;
      case 'VISA':
        return iconData.visaPath;
      case 'UNION_PAY':
        return iconData.unionPayPath;
      case 'MIR':
        return iconData.mirPath;
      case 'JCB':
        return iconData.jcbPath;
      default:
        return iconData.defaultIcon;
    }
  }
}
