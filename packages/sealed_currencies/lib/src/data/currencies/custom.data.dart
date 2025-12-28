part of "../../model/currency/submodels/fiat_currency.dart";

/// A class that represents a user-defined fiat currency instance.
final class FiatCustom extends FiatCurrency {
  /// Creates a custom instance of [FiatCurrency] (non-standard ISO 4217).
  /// {@macro currency_constructor}
  /// {@macro permissive_constructor}
  const FiatCustom({
    super.code,
    super.name,
    super.namesNative,
    super.codeNumeric,
    super.alternateSymbols,
    super.disambiguateSymbol,
    super.htmlEntity,
    super.priority,
    super.smallestDenomination,
    super.subunit,
    super.subunitToUnit,
    super.unitFirst,
    super.symbol,
    super.decimalMark,
    super.thousandsSeparator,
    super.mapper,
  }) : super._permissive();
}
