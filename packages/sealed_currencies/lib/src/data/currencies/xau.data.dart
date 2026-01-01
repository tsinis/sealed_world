part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _XauFactory._(FiatXau _) implements FiatXau {
  const _XauFactory() : this._(const FiatXau._());
}

/// A class that represents the Gold (Troy Ounce) currency.
final class FiatXau extends FiatCurrency {
  /// {@template sealed_world.currency_xau_constructor}
  /// Creates a instance of [FiatXau] (Gold (Troy Ounce) currency).
  ///
  /// ISO 4217 Alpha code: `XAU`, ISO 4217 Numeric code: `959`.
  /// {@endtemplate}
  const factory FiatXau() = _XauFactory;

  const FiatXau._()
    : super(
        code: "XAU",
        name: "Gold (Troy Ounce)",
        symbol: "oz t",
        disambiguateSymbol: "XAU",
        codeNumeric: "959",
        namesNative: const ["Gold"],
        smallestDenomination: 0,
        subunit: "oz",
        subunitToUnit: 1,
      );
}
