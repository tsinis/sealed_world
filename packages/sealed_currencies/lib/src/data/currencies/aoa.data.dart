part of "../../model/currency/currency.dart";

extension type const _AoaFactory._(FiatAoa _) implements FiatAoa {
  const _AoaFactory() : this._(const FiatAoa._());
}

/// A class that represents the the Angolan Kwanza currency.
class FiatAoa extends FiatCurrency {
  /// {@template sealed_world.currency_aoa_constructor}
  /// Creates a instance of [FiatAoa] (Angolan Kwanza currency).
  ///
  /// ISO 4217 Alpha code: `AOA`, ISO 4217 Numeric code: `973`.
  /// {@endtemplate}
  const factory FiatAoa() = _AoaFactory;

  const FiatAoa._()
    : super(
        code: "AOA",
        name: "Angolan Kwanza",
        symbol: "Kz",
        codeNumeric: "973",
        namesNative: const ["Angolan kwanza"],
        smallestDenomination: 10,
        subunit: "Cêntimo",
      );
}
