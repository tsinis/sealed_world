import "../../model/currency/submodels/fiat_currency.dart";
import "fiat_currency_getters.dart";

/// Provides a set of methods for formatting values of [FiatCurrency].
extension FiatCurrencyFormat on FiatCurrency {
  /// Cached regex for thousands formatting.
  static final _thousandsRegex = RegExp(r"(\d)(?=(\d{3})+(?!\d))");

  /// If value is not `null` - formats the value as a string with
  /// the currency symbol. Otherwise returns `null`.
  ///
  /// When [isRtl] is `true`, the unit position is flipped to ensure correct
  /// display in right-to-left locales.
  // ignore: avoid_positional_boolean_parameters, limitation of dart lang.
  String? tryFormat([num? maybeValue, bool isRtl = false]) =>
      maybeValue == null ? null : format(maybeValue, isRtl: isRtl);

  /// Adds the currency unit to a value.
  ///
  /// If [unitFirst] is `true` (default), the currency unit is added before the
  /// value, otherwise it is added after the value.
  ///
  /// When [isRtl] is `true`, the unit position is flipped to ensure correct
  /// display in right-to-left locales.
  String addUnit(String value, {bool isRtl = false}) {
    final isLeading = isRtl ? !unitFirst : unitFirst;

    return isLeading ? "$unit $value" : "$value $unit";
  }

  /// Formats the value as a string with the currency symbol. Please keep in
  /// mind that currency formatting might be also affected by locale itself.
  ///
  /// When [isRtl] is `true`, the unit position is flipped to ensure correct
  /// display in right-to-left locales.
  String format(num value, {bool isRtl = false}) {
    final stringValue = value.toString();

    if (stringValue.contains(FiatCurrency.dot)) {
      final splitValue = stringValue.split(FiatCurrency.dot);
      final integer = splitValue.first;
      final decimals = splitValue.last;
      final formattedInt = _formatThousands(integer);

      return addUnit(formattedInt + decimalMark + decimals, isRtl: isRtl);
    }

    return addUnit(_formatThousands(stringValue), isRtl: isRtl);
  }

  String _formatThousands(String value) => value.replaceAllMapped(
    _thousandsRegex,
    (match) => "${match[1]}$thousandsSeparator",
  );
}
