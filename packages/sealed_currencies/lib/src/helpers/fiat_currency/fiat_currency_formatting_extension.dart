import "../../model/currency.dart";

/// Provides a set of methods for formatting values of [FiatCurrency].
extension FiatCurrencyFormattingExtension on FiatCurrency {
  /// If value is not `null` - formats the value as a string with
  /// the currency symbol. Otherwise returns `null`.
  String? tryFormat([num? maybeValue]) =>
      maybeValue != null ? format(maybeValue) : null;

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
