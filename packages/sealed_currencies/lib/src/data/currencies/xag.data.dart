part of "../../model/currency/currency.dart";

extension type const _XagFactory._(FiatXag _) implements FiatXag {
  const _XagFactory() : this._(const FiatXag._());
}

/// A class that represents the Silver (Troy Ounce) currency.
class FiatXag extends FiatCurrency {
  /// {@template sealed_world.currency_xag_constructor}
  /// Creates a instance of [FiatXag] (Silver (Troy Ounce) currency).
  ///
  /// ISO 4217 Alpha code: `XAG`, ISO 4217 Numeric code: `961`.
  /// {@endtemplate}
  const factory FiatXag() = _XagFactory;

  const FiatXag._()
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
