part of "../../model/currency/currency.dart";

extension type const _HkdFactory._(FiatHkd _) implements FiatHkd {
  const _HkdFactory() : this._(const FiatHkd._());
}

/// A class that represents the the Hong Kong Dollar currency.
class FiatHkd extends FiatCurrency {
  /// {@template sealed_world.currency_hkd_constructor}
  /// Creates a instance of [FiatHkd] (Hong Kong Dollar currency).
  ///
  /// ISO 4217 Alpha code: `HKD`, ISO 4217 Numeric code: `344`.
  /// {@endtemplate}
  const factory FiatHkd() = _HkdFactory;

  const FiatHkd._()
    : super(
        code: "HKD",
        name: "Hong Kong Dollar",
        symbol: r"$",
        alternateSymbols: const [r"HK$"],
        disambiguateSymbol: r"HK$",
        htmlEntity: r"$",
        codeNumeric: "344",
        namesNative: const ["港幣"],
        smallestDenomination: 10,
        subunit: "Cent",
        unitFirst: true,
      );
}
