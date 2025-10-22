part of "../../model/currency/currency.dart";

extension type const _XtsFactory._(FiatXts _) implements FiatXts {
  const _XtsFactory() : this._(const FiatXts._());
}

/// A class that represents the Codes specifically reserved for testing
/// purposes currency.
class FiatXts extends FiatCurrency {
  /// {@template sealed_world.currency_xts_constructor}
  /// Creates a instance of [FiatXts] (Codes specifically reserved for testing
  /// purposes currency).
  ///
  /// ISO 4217 Alpha code: `XTS`, ISO 4217 Numeric code: `963`.
  /// {@endtemplate}
  const factory FiatXts() = _XtsFactory;

  const FiatXts._()
    : super(
        code: "XTS",
        name: "Codes specifically reserved for testing purposes",
        codeNumeric: "963",
        namesNative: const ["Test currency"],
        smallestDenomination: 0,
        subunitToUnit: 1,
      );
}
