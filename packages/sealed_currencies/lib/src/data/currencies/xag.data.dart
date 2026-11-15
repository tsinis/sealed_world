part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _XagFactory._(FiatXag _) implements FiatXag {
  const new() : this._(const FiatXag._());
}

/// A class that represents the Silver (Troy Ounce) currency.
final class FiatXag extends FiatCurrency {
  /// {@template sealed_world.currency_xag_constructor}
  /// Creates a instance of [FiatXag] (Silver (Troy Ounce) currency).
  ///
  /// ISO 4217 Alpha code: `XAG`, ISO 4217 Numeric code: `961`.
  /// {@endtemplate}
  const factory() = _XagFactory;

  const new _()
    : super(
        code: "XAG",
        name: "Silver (Troy Ounce)",
        symbol: "oz t",
        disambiguateSymbol: "XAG",
        codeNumeric: "961",
        namesNative: const ["Silver"],
        smallestDenomination: 0,
        subunit: "oz",
        subunitToUnit: 1,
      );
}
