part of "../../model/currency/currency.dart";

extension type const _RwfFactory._(FiatRwf _) implements FiatRwf {
  const _RwfFactory() : this._(const FiatRwf._());
}

/// A class that represents the the Rwandan Franc currency.
class FiatRwf extends FiatCurrency {
  /// {@template sealed_world.currency_rwf_constructor}
  /// Creates a instance of [FiatRwf] (Rwandan Franc currency).
  ///
  /// ISO 4217 Alpha code: `RWF`, ISO 4217 Numeric code: `646`.
  /// {@endtemplate}
  const factory FiatRwf() = _RwfFactory;

  const FiatRwf._()
    : super(
        code: "RWF",
        name: "Rwandan Franc",
        symbol: "FRw",
        alternateSymbols: const ["RF", "R₣"],
        codeNumeric: "646",
        namesNative: const ["Franc Rwandais"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
