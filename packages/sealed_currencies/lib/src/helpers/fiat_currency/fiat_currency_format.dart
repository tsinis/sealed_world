import "../../model/currency/currency.dart";
import "fiat_currency_getters.dart";

/// Provides a set of methods for formatting values of [FiatCurrency].
extension FiatCurrencyFormat on FiatCurrency {
  /// If value is not `null` - formats the value as a string with
  /// the currency symbol. Otherwise returns `null`.
  String? tryFormat([num? maybeValue]) =>
      maybeValue == null ? null : format(maybeValue);

  /// Adds the currency unit to a value.
  ///
  /// If [unitFirst] is `true` (default), the currency unit is added before the
  /// value, otherwise it is added after the value.
  String addUnit(String value) => unitFirst ? "$unit $value" : "$value $unit";

  /// Formats the value as a string with the currency symbol.
  String format(num value) {
    final stringValue = value.toString();
    if (stringValue.contains(FiatCurrency.dot)) {
      final splitValue = stringValue.split(FiatCurrency.dot);
      final integer = splitValue.first;
      final decimals = splitValue.last;
      final formattedInt = _formatThousands(integer);

      return addUnit(formattedInt + decimalMark + decimals);
    }

    return addUnit(_formatThousands(stringValue));
  }

  String _formatThousands(String value) => value.replaceAllMapped(
    RegExp(r"(\d)(?=(\d{3})+(?!\d))"),
    (match) => "${match[1]}$thousandsSeparator",
  );
}
