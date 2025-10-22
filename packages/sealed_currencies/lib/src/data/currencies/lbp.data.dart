part of "../../model/currency/currency.dart";

extension type const _LbpFactory._(FiatLbp _) implements FiatLbp {
  const _LbpFactory() : this._(const FiatLbp._());
}

/// A class that represents the the Lebanese Pound currency.
class FiatLbp extends FiatCurrency {
  /// {@template sealed_world.currency_lbp_constructor}
  /// Creates a instance of [FiatLbp] (Lebanese Pound currency).
  ///
  /// ISO 4217 Alpha code: `LBP`, ISO 4217 Numeric code: `422`.
  /// {@endtemplate}
  const factory FiatLbp() = _LbpFactory;

  const FiatLbp._()
    : super(
        code: "LBP",
        name: "Lebanese Pound",
        symbol: "ل.ل",
        alternateSymbols: const ["£", "L£"],
        htmlEntity: "&#x00A3;",
        codeNumeric: "422",
        namesNative: const ["ليرة لبنانية"],
        smallestDenomination: 25000,
        subunit: "Piastre",
        unitFirst: true,
      );
}
