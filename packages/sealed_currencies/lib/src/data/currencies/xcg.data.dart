part of "../../model/currency/currency.dart";

extension type const _XcgFactory._(FiatXcg _) implements FiatXcg {
  const _XcgFactory() : this._(const FiatXcg._());
}

/// A class that represents the the Caribbean Guilder currency.
class FiatXcg extends FiatCurrency {
  /// {@template sealed_world.currency_xcg_constructor}
  /// Creates a instance of [FiatXcg] (Caribbean Guilder currency).
  ///
  /// ISO 4217 Alpha code: `XCG`, ISO 4217 Numeric code: `532`.
  /// {@endtemplate}
  const factory FiatXcg() = _XcgFactory;

  const FiatXcg._()
    : super(
        code: "XCG",
        name: "Caribbean Guilder",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "Cg",
        codeNumeric: "532",
        namesNative: const ["Caribische gulden", "florin karibense"],
        subunit: "Cent",
        unitFirst: true,
      );
}
