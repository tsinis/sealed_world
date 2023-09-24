import "../../../model/currency.dart";

/// Provides a set of getters for the [FiatCurrency] class.
extension FiatCurrencyGetters on FiatCurrency {
  /// Returns the unit of the currency.
  ///
  /// If the currency symbol is not available, the 3-letter
  /// ISO 4217 currency code is returned instead.
  String get unit => symbol ?? code;

  /// Returns the ISO 4217 letter code of the currency.
  ///
  /// Provides same data as [code].
  String get iso4217Letter => code;

  /// Returns the ISO 4217 numeric code of the currency.
  ///
  /// Provides same data as [codeNumeric].
  String get iso4217Numeric => codeNumeric;
}
