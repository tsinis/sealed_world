part of "../../model/currency/currency.dart";

extension type const _GnfFactory._(FiatGnf _) implements FiatGnf {
  const _GnfFactory() : this._(const FiatGnf._());
}

/// A class that represents the Guinean Franc currency.
class FiatGnf extends FiatCurrency {
  /// {@template sealed_world.currency_gnf_constructor}
  /// Creates a instance of [FiatGnf] (Guinean Franc currency).
  ///
  /// ISO 4217 Alpha code: `GNF`, ISO 4217 Numeric code: `324`.
  /// {@endtemplate}
  const factory FiatGnf() = _GnfFactory;

  const FiatGnf._()
    : super(
        code: "GNF",
        name: "Guinean Franc",
        symbol: "Fr",
        alternateSymbols: const ["FG", "GFr"],
        disambiguateSymbol: "FG",
        codeNumeric: "324",
        namesNative: const ["franc guinéen"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
