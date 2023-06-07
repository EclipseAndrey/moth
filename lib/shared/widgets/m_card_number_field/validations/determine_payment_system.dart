String determinePaymentSystem(String cardNumber) {
  final first2Digits = cardNumber.length >= 2 ? cardNumber.substring(0, 2) : '00';
  final first4Digits = cardNumber.length >= 4 ? cardNumber.substring(0, 4) : '0000';

  if (cardNumber.startsWith('4')) {
    return 'VISA';
  } else if ((num.parse(first2Digits) >= 51 && num.parse(first2Digits) <= 55) ||
      (num.parse(first4Digits) >= 2221 && num.parse(first4Digits) <= 2720)) {
    return 'MASTERCARD';
  } else if (cardNumber.startsWith('5018') ||
      cardNumber.startsWith('5020') ||
      cardNumber.startsWith('5038') ||
      cardNumber.startsWith('5893')) {
    return 'MAESTRO';
  } else if (cardNumber.startsWith('35')) {
    return 'JCB';
  } else if (cardNumber.startsWith('2200')) {
    return 'MIR';
  } else if (cardNumber.startsWith('62')) {
    return 'UNION_PAY';
  } else if (cardNumber.startsWith('6011')) {
    return 'DISCOVER';
  } else if (cardNumber.startsWith('34') || cardNumber.startsWith('37')) {
    return 'AMEX';
  }
  return 'UNKNOWN';
}
