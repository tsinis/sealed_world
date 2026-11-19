// ignore_for_file: avoid-substring, it only slices ASCII digits of numbers.

import "../../model/currency/submodels/fiat_currency.dart";
import "fiat_currency_getters.dart";

/// Provides a set of methods for formatting values of [FiatCurrency].
extension FiatCurrencyFormat on FiatCurrency {
  /// Cached regex for thousands formatting.
  static final _thousandsRegex = RegExp(r"(\d)(?=(\d{3})+(?!\d))");

  /// Matches a negative zero, such as `-0`, `-0.0` or `-0.00`.
  static final _negativeZeroRegex = RegExp(r"^-0(\.0*)?$");

  static const _minus = "-";
  static const _zero = 0x30; // "0".
  static const _five = 0x35; // "5".
  static const _nine = 0x39; // "9".

  /// If value is not `null` - formats the value as a string with
  /// the currency symbol. Otherwise returns `null`.
  ///
  /// When [isRtl] is `true`, the unit position is flipped to ensure correct
  /// display in right-to-left locales. To round the value, call [format] with
  /// its `fractionDigits` instead.
  // This is limitation of Dart language + breaking change.
  // ignore: prefer-named-boolean-parameters
  String? tryFormat([num? maybeValue, bool isRtl = false]) =>
      maybeValue == null ? null : format(maybeValue, isRtl: isRtl);

  /// Adds the currency unit to a value.
  ///
  /// If [unitFirst] is `true`, the currency unit is added before the value,
  /// otherwise (default) it is added after the value.
  ///
  /// When [isRtl] is `true`, the unit position is flipped to ensure correct
  /// display in right-to-left locales.
  String addUnit(String value, {bool isRtl = false}) =>
      isRtl == unitFirst ? "$value $unit" : "$unit $value";

  /// Formats the value as a string with the currency symbol. Please keep in
  /// mind that currency formatting might be also affected by locale itself.
  ///
  /// When [isRtl] is `true`, the unit position is flipped to ensure correct
  /// display in right-to-left locales.
  ///
  /// By default the [value] is not rounded: its decimal part is kept exactly
  /// as [num.toString] prints it (`1.5` is `€ 1,5` and `0.1 + 0.2` is
  /// `€ 0,30000000000000004`). Pass [fractionDigits] (from `0` to
  /// [FiatCurrency.maxDecimalDigits]) to round the value half away from zero
  /// and pad it with zeros to that many decimal digits, for example the
  /// [FiatCurrency.decimalDigits] of the currency (`1.5` is `€ 1,50`).
  ///
  /// The value is rounded as the decimal number [num.toString] prints, not as
  /// its binary approximation, so `1.005` is `€ 1,01` (while
  /// `1.005.toStringAsFixed(2)` is `1.00`), and a value that rounds to zero
  /// has no minus sign (`-0.001` is `€ 0,00`). Values of `1e21` and above
  /// (and below `1e-6`) are rounded by [num.toStringAsFixed] instead, and
  /// non-finite values (`NaN`, `Infinity`) are printed as is.
  ///
  /// Throws a [RangeError] if [fractionDigits] is not between `0` and
  /// [FiatCurrency.maxDecimalDigits].
  String format(num value, {bool isRtl = false, int? fractionDigits}) {
    final stringValue = fractionDigits == null
        ? value.toString()
        : _toFixed(value, fractionDigits);

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

  static String _toFixed(num value, int fractionDigits) {
    RangeError.checkValueInInterval(
      fractionDigits,
      0,
      FiatCurrency.maxDecimalDigits,
      "fractionDigits",
    );
    final shortest = value.toString();
    // Exponential notation (`1e+21`, `1e-7`) and non-finite values.
    final fixed = !value.isFinite || shortest.contains("e")
        ? value.toStringAsFixed(fractionDigits)
        : _roundDecimal(shortest, fractionDigits);

    return _negativeZeroRegex.hasMatch(fixed) ? fixed.substring(1) : fixed;
  }

  /// Rounds the plain decimal [shortest] (such as `-1234.5678`) half away from
  /// zero to [fractionDigits] decimal digits, padding it with zeros.
  static String _roundDecimal(String shortest, int fractionDigits) {
    final isNegative = shortest.startsWith(_minus);
    final parts = (isNegative ? shortest.substring(1) : shortest).split(
      FiatCurrency.dot,
    );
    final fraction = parts.length > 1 ? parts.last : "";

    String digits =
        parts.first +
        fraction.padRight(fractionDigits, "0").substring(0, fractionDigits);
    final hasRoundUp =
        fraction.length > fractionDigits &&
        fraction.codeUnitAt(fractionDigits) >= _five;
    if (hasRoundUp) digits = _increment(digits);

    final integerLength = digits.length - fractionDigits;
    final unsigned = fractionDigits == 0
        ? digits
        : "${digits.substring(0, integerLength)}${FiatCurrency.dot}"
              "${digits.substring(integerLength)}";

    return isNegative ? "$_minus$unsigned" : unsigned;
  }

  /// Adds one to the unsigned decimal [digits] (`"0999"` is `"1000"`).
  static String _increment(String digits) {
    final units = digits.codeUnits.toList();
    for (int index = units.length - 1; index >= 0; index -= 1) {
      if (units[index] != _nine) {
        units[index] += 1;

        return String.fromCharCodes(units);
      }
      units[index] = _zero;
    }

    return "1${String.fromCharCodes(units)}";
  }
}
