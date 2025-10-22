part of "../../model/currency/currency.dart";

extension type const _KmfFactory._(FiatKmf _) implements FiatKmf {
  const _KmfFactory() : this._(const FiatKmf._());
}

/// A class that represents the the Comorian Franc currency.
class FiatKmf extends FiatCurrency {
  /// {@template sealed_world.currency_kmf_constructor}
  /// Creates a instance of [FiatKmf] (Comorian Franc currency).
  ///
  /// ISO 4217 Alpha code: `KMF`, ISO 4217 Numeric code: `174`.
  /// {@endtemplate}
  const factory FiatKmf() = _KmfFactory;

  const FiatKmf._()
    : super(
        code: "KMF",
        name: "Comorian Franc",
        symbol: "Fr",
        alternateSymbols: const ["CF"],
        disambiguateSymbol: "CF",
        codeNumeric: "174",
        namesNative: const ["Comorian franc"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
