bool luhnAlgorithm(String value) {
  final regExp = RegExp(r'[\D.]');
  final number = value.replaceAll(regExp, '');

  /// контрольная сумма
  var nCheck = 0;

  /// индикатор "четности" позиции числа
  var bEven = false;

  /// перебираем числа в обратном порядке
  for (var n = number.length - 1; n >= 0; n--) {
    /// извлекаем число из строки
    /// позиция первого извлеченного числа является нечетной
    var nDigit = int.parse(number[n]);

    /// если позиция числа четная и при умножении на 2 число становится больше 9,
    /// вычитаем из числа 9
    /// результат будет таким же, как при сложении цифр, из которых состоит число
    /// например, `6 * 2 = 12`, `1 + 2 = 3` и `12 - 9 = 3`
    if (bEven && (nDigit *= 2) > 9) {
      nDigit -= 9;
    }

    /// прибавляем число к сумме
    nCheck += nDigit;

    /// инвертируем индикатор
    bEven = !bEven;
  }

  /// если контрольная сумма делится на 10 без остатка,
  /// значит, номер карты является валидным
  return nCheck % 10 == 0;
}
