part of "../currency.dart";

class CryptoCurrency extends Currency {
  const CryptoCurrency({
    required super.code,
    required super.name,
    super.decimalMark = ".",
    super.thousandsSeparator = ",",
    super.symbol,
    this.isMinable = false,
    this.isFork = false,
    this.proofType,
    this.dateAdded,
  });

  final bool isMinable;
  final bool isFork;
  final String? proofType;
  final DateTime? dateAdded;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """CryptoCurrency(code: $code, name: $name, decimalMark: $decimalMark, thousandsSeparator: $thousandsSeparator, symbol: $symbol, isMinable: $isMinable, isFork: $isFork, proofType: $proofType, dateAdded: $dateAdded)""";
}
