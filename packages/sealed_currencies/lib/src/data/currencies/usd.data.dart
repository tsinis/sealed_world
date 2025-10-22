part of "../../model/currency/currency.dart";

extension type const _UsdFactory._(FiatUsd _) implements FiatUsd {
  const _UsdFactory() : this._(const FiatUsd._());
}

/// A class that represents the the United States Dollar currency.
class FiatUsd extends FiatCurrency {
  /// {@template sealed_world.currency_usd_constructor}
  /// Creates a instance of [FiatUsd] (United States Dollar currency).
  ///
  /// ISO 4217 Alpha code: `USD`, ISO 4217 Numeric code: `840`.
  /// {@endtemplate}
  const factory FiatUsd() = _UsdFactory;

  const FiatUsd._()
    : super(
        code: "USD",
        name: "United States Dollar",
        symbol: r"$",
        alternateSymbols: const [r"US$"],
        disambiguateSymbol: r"US$",
        htmlEntity: r"$",
        codeNumeric: "840",
        namesNative: const ["US Dollars"],
        priority: 1,
        subunit: "Cent",
        unitFirst: true,
      );
}
