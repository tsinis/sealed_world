import "dart:convert";

part "crypto_currency.dart";
part "fiat_currency.dart";

sealed class Currency {
  const Currency(
    this.code, {
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
  String toString() =>
      """Currency(code: $code, name: $name, symbol: $symbol, decimalMark: $decimalMark, thousandsSeparator: $thousandsSeparator)""";

  Map<String, Object?> toMap();

  /// `dart:convert`
  ///
  /// Converts [Currency] to a JSON string.
  String toJson() => json.encode(toMap());
}
