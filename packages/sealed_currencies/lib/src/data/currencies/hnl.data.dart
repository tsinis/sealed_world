part of "../../model/currency/currency.dart";

extension type const _HnlFactory._(FiatHnl _) implements FiatHnl {
  const _HnlFactory() : this._(const FiatHnl._());
}

/// A class that represents the the Honduran Lempira currency.
class FiatHnl extends FiatCurrency {
  /// {@template sealed_world.currency_hnl_constructor}
  /// Creates a instance of [FiatHnl] (Honduran Lempira currency).
  ///
  /// ISO 4217 Alpha code: `HNL`, ISO 4217 Numeric code: `340`.
  /// {@endtemplate}
  const factory FiatHnl() = _HnlFactory;

  const FiatHnl._()
    : super(
        code: "HNL",
        name: "Honduran Lempira",
        symbol: "L",
        disambiguateSymbol: "HNL",
        codeNumeric: "340",
        namesNative: const ["lempira hondureño"],
        smallestDenomination: 5,
        subunit: "Centavo",
        unitFirst: true,
      );
}
