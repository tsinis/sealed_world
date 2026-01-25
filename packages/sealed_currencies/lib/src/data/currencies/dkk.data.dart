part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _DkkFactory._(FiatDkk _) implements FiatDkk {
  const _DkkFactory() : this._(const FiatDkk._());
}

/// A class that represents the Danish Krone currency.
final class FiatDkk extends FiatCurrency {
  /// {@template sealed_world.currency_dkk_constructor}
  /// Creates a instance of [FiatDkk] (Danish Krone currency).
  ///
  /// ISO 4217 Alpha code: `DKK`, ISO 4217 Numeric code: `208`.
  /// {@endtemplate}
  const factory FiatDkk() = _DkkFactory;

  const FiatDkk._()
    : super(
        code: "DKK",
        name: "Danish Krone",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "kr.",
        alternateSymbols: const ["krone"],
        disambiguateSymbol: "DKK",
        codeNumeric: "208",
        namesNative: const ["dansk krone"],
        smallestDenomination: 50,
        subunit: "Øre",
      );
}
