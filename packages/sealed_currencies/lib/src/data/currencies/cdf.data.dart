part of "../../model/currency/currency.dart";

extension type const _CdfFactory._(FiatCdf _) implements FiatCdf {
  const _CdfFactory() : this._(const FiatCdf._());
}

/// A class that represents the the Congolese Franc currency.
class FiatCdf extends FiatCurrency {
  /// {@template sealed_world.currency_cdf_constructor}
  /// Creates a instance of [FiatCdf] (Congolese Franc currency).
  ///
  /// ISO 4217 Alpha code: `CDF`, ISO 4217 Numeric code: `976`.
  /// {@endtemplate}
  const factory FiatCdf() = _CdfFactory;

  const FiatCdf._()
    : super(
        code: "CDF",
        name: "Congolese Franc",
        symbol: "Fr",
        alternateSymbols: const ["FC"],
        disambiguateSymbol: "FC",
        codeNumeric: "976",
        namesNative: const ["franc congolais"],
        subunit: "Centime",
      );
}
