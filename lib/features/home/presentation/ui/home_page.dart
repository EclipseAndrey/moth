import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moth/features/home/presentation/ui/widgets/home_app_bar.dart';
import 'package:moth/shared/qr/qr_generator.dart';
import 'package:moth/shared/widgets/m_card_number_field/card_form.dart';
import 'package:moth/shared/widgets/m_card_number_field/models/card_model.dart';
import 'package:moth/shared/widgets/m_card_number_field/models/payment_system_icon_data.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CardForm(
                initialData:
                    CardModel(pan: '4000000000000002', date: DateTime(2023, 12), secureCode: '123', holder: 'Andrey K'),
                onChange: (card) {},
                paymentSystemIconData: const PaymentSystemIconData(
                  mastercardPath: 'assets/icons/mastercard-light.svg',
                  visaPath: 'assets/icons/visa-light.svg',
                  unionPayPath: 'assets/icons/unionpay-light.svg',
                  mirPath: 'assets/icons/mir-light.svg',
                  jcbPath: 'assets/icons/jcb-light.svg',
                  defaultIcon: 'assets/icons/wallet.svg',
                ),
              ),
              Container(
                width: 200.0,
                height: 200.0,
                child: Image.memory(
                  Uint8List.fromList(generateQRCode("https://example.com", 25)),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
