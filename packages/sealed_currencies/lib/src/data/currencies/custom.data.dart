part of "../../model/currency/submodels/fiat_currency.dart";

/// A class that represents a user-defined fiat currency instance.
final class FiatCustom extends FiatCurrency {
  /// Creates a custom instance of [FiatCurrency] (non-standard ISO 4217).
  /// {@macro currency_constructor}
  /// {@macro permissive_constructor}
  const FiatCustom({
    super.code,
    super.codeNumeric,
    super.alternateSymbols,
    super.decimalMark,
    super.disambiguateSymbol,
    super.htmlEntity,
    super.mapper,
    super.name,
    super.namesNative,
    super.priority,
    super.smallestDenomination,
    super.subunit,
    super.subunitToUnit,
    super.symbol,
    super.thousandsSeparator,
    super.unitFirst,
  }) : super._permissive();
}
