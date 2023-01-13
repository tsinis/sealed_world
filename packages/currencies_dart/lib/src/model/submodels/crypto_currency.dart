part of "../currency.dart";

class CryptoCurrency extends Currency {
  const CryptoCurrency({
    required super.code,
    required super.name,
    super.decimalMark = ".",
    super.thousandsSeparator = ",",
    super.symbol,
  });
}
