part of "../../model/currency/currency.dart";

extension type const _BhdFactory._(FiatBhd _) implements FiatBhd {
  const _BhdFactory() : this._(const FiatBhd._());
}

/// A class that represents the Bahraini Dinar currency.
class FiatBhd extends FiatCurrency {
  /// {@template sealed_world.currency_bhd_constructor}
  /// Creates a instance of [FiatBhd] (Bahraini Dinar currency).
  ///
  /// ISO 4217 Alpha code: `BHD`, ISO 4217 Numeric code: `048`.
  /// {@endtemplate}
  const factory FiatBhd() = _BhdFactory;

  const FiatBhd._()
    : super(
        code: "BHD",
        name: "Bahraini Dinar",
        symbol: "د.ب",
        alternateSymbols: const ["BD"],
        codeNumeric: "048",
        namesNative: const ["دينار بحريني"],
        smallestDenomination: 5,
        subunit: "Fils",
        subunitToUnit: 1000,
        unitFirst: true,
      );
}
