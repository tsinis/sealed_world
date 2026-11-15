part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _GnfFactory._(FiatGnf _) implements FiatGnf {
  const new() : this._(const FiatGnf._());
}

/// A class that represents the Guinean Franc currency.
final class FiatGnf extends FiatCurrency {
  /// {@template sealed_world.currency_gnf_constructor}
  /// Creates a instance of [FiatGnf] (Guinean Franc currency).
  ///
  /// ISO 4217 Alpha code: `GNF`, ISO 4217 Numeric code: `324`.
  /// {@endtemplate}
  const factory() = _GnfFactory;

  const new _()
    : super(
        code: "GNF",
        name: "Guinean Franc",
        symbol: "Fr",
        alternateSymbols: const ["FG", "GFr"],
        disambiguateSymbol: "FG",
        codeNumeric: "324",
        namesNative: const ["Franc guinéen"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
