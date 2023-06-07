import 'package:moth/shared/widgets/m_card_number_field/validations/luhn_algorithm.dart';

class CardModel {
  final String pan;
  final DateTime date;
  final String secureCode;
  final String holder;

  bool get isValid => _validate();

  CardModel({
    required this.pan,
    required this.date,
    required this.secureCode,
    required this.holder,
  });

  bool _validate() {
    return _validPanLen() && luhnAlgorithm(pan) && _validDate() && _validSecureCode();
  }

  bool _validPanLen() {
    return pan.replaceAll(RegExp(r'[\D.]'), '').length == 16;
  }

  bool _validDate() {
    if (date.year < DateTime.now().year) {
      return false;
    } else if (date.year == DateTime.now().year && date.month < DateTime.now().month) {
      return false;
    }
    if (date.month > 12 || date.month <= 0) {
      return false;
    }
    return true;
  }

  bool _validSecureCode() {
    return secureCode.length == 3;
  }
}
