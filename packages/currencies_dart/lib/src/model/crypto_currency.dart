part of "currency.dart";

class CryptoCurrency extends Currency {
  const CryptoCurrency({
    required String code,
    required super.name,
    super.decimalMark = ".",
    super.thousandsSeparator = ",",
    super.symbol,
  }) : super(code);

  factory CryptoCurrency.fromMap(Map<String, Object?> data) => CryptoCurrency(
        code: data["code"]! as String,
        name: data["name"]! as String,
        decimalMark: data["decimal_mark"]! as String,
        thousandsSeparator: data["thousands_separator"]! as String,
        symbol: data["symbol"] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string, returns the resulting Json object as [CryptoCurrency].
  factory CryptoCurrency.fromJson(String data) =>
      CryptoCurrency.fromMap(json.decode(data) as Map<String, Object?>);

  @override
  String toString() =>
      """CryptoCurrency(code: $code, name: $name, symbol: $symbol, decimalMark: $decimalMark, thousandsSeparator: $thousandsSeparator)""";
}
