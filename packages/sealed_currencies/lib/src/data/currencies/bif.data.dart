part of "../../model/currency/currency.dart";

extension type const _BifFactory._(FiatBif _) implements FiatBif {
  const _BifFactory() : this._(const FiatBif._());
}

/// A class that represents the Burundian Franc currency.
class FiatBif extends FiatCurrency {
  /// {@template sealed_world.currency_bif_constructor}
  /// Creates a instance of [FiatBif] (Burundian Franc currency).
  ///
  /// ISO 4217 Alpha code: `BIF`, ISO 4217 Numeric code: `108`.
  /// {@endtemplate}
  const factory FiatBif() = _BifFactory;

  const FiatBif._()
    : super(
        code: "BIF",
        name: "Burundian Franc",
        symbol: "Fr",
        alternateSymbols: const ["FBu"],
        disambiguateSymbol: "FBu",
        codeNumeric: "108",
        namesNative: const ["franc burundais"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
