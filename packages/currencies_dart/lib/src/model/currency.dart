import "../data/fiat_currencies.dart";

part "submodels/crypto_currency.dart";
part "submodels/fiat_currency.dart";

sealed class Currency {
  const Currency({
    required this.code,
    required this.decimalMark,
    required this.name,
    required this.thousandsSeparator,
    this.symbol,
  });

  final String code;
  final String decimalMark;
  final String name;
  final String thousandsSeparator;
  final String? symbol;

  @override
  String toString({bool short = true}) => short
      ? "Currency(code: $code)"
      : """Currency(code: $code, name: $name, symbol: $symbol, decimalMark: $decimalMark, thousandsSeparator: $thousandsSeparator)""";
}
