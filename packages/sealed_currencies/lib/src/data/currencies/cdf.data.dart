part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _CdfFactory._(FiatCdf _) implements FiatCdf {
  const new() : this._(const FiatCdf._());
}

/// A class that represents the Congolese Franc currency.
final class FiatCdf extends FiatCurrency {
  /// {@template sealed_world.currency_cdf_constructor}
  /// Creates a instance of [FiatCdf] (Congolese Franc currency).
  ///
  /// ISO 4217 Alpha code: `CDF`, ISO 4217 Numeric code: `976`.
  /// {@endtemplate}
  const factory() = _CdfFactory;

  const new _()
    : super(
        code: "CDF",
        name: "Congolese Franc",
        symbol: "Fr",
        alternateSymbols: const ["FC"],
        disambiguateSymbol: "FC",
        codeNumeric: "976",
        namesNative: const ["Franc congolais"],
        subunit: "Centime",
      );
}
