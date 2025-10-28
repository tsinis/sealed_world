part of "../../model/currency/currency.dart";

extension type const _XptFactory._(FiatXpt _) implements FiatXpt {
  const _XptFactory() : this._(const FiatXpt._());
}

/// A class that represents the Platinum currency.
class FiatXpt extends FiatCurrency {
  /// {@template sealed_world.currency_xpt_constructor}
  /// Creates a instance of [FiatXpt] (Platinum currency).
  ///
  /// ISO 4217 Alpha code: `XPT`, ISO 4217 Numeric code: `962`.
  /// {@endtemplate}
  const factory FiatXpt() = _XptFactory;

  const FiatXpt._()
    : super(
        code: "XPT",
        name: "Platinum",
        symbol: "oz t",
        codeNumeric: "962",
        namesNative: const ["Platinum"],
        smallestDenomination: 0,
        subunitToUnit: 1,
      );
}
