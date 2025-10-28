part of "../../model/currency/currency.dart";

extension type const _TwdFactory._(FiatTwd _) implements FiatTwd {
  const _TwdFactory() : this._(const FiatTwd._());
}

/// A class that represents the New Taiwan Dollar currency.
class FiatTwd extends FiatCurrency {
  /// {@template sealed_world.currency_twd_constructor}
  /// Creates a instance of [FiatTwd] (New Taiwan Dollar currency).
  ///
  /// ISO 4217 Alpha code: `TWD`, ISO 4217 Numeric code: `901`.
  /// {@endtemplate}
  const factory FiatTwd() = _TwdFactory;

  const FiatTwd._()
    : super(
        code: "TWD",
        name: "New Taiwan Dollar",
        symbol: r"$",
        alternateSymbols: const [r"NT$"],
        disambiguateSymbol: r"NT$",
        htmlEntity: r"$",
        codeNumeric: "901",
        namesNative: const ["新臺幣"],
        smallestDenomination: 50,
        subunit: "Cent",
        unitFirst: true,
      );
}
