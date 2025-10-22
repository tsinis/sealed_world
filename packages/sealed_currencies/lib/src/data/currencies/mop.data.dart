part of "../../model/currency/currency.dart";

extension type const _MopFactory._(FiatMop _) implements FiatMop {
  const _MopFactory() : this._(const FiatMop._());
}

/// A class that represents the the Macanese Pataca currency.
class FiatMop extends FiatCurrency {
  /// {@template sealed_world.currency_mop_constructor}
  /// Creates a instance of [FiatMop] (Macanese Pataca currency).
  ///
  /// ISO 4217 Alpha code: `MOP`, ISO 4217 Numeric code: `446`.
  /// {@endtemplate}
  const factory FiatMop() = _MopFactory;

  const FiatMop._()
    : super(
        code: "MOP",
        name: "Macanese Pataca",
        symbol: "P",
        alternateSymbols: const [r"MOP$"],
        codeNumeric: "446",
        namesNative: const ["澳門圓"],
        smallestDenomination: 10,
        subunit: "Avo",
      );
}
