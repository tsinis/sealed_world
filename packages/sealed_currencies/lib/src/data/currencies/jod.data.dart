part of "../../model/currency/currency.dart";

extension type const _JodFactory._(FiatJod _) implements FiatJod {
  const _JodFactory() : this._(const FiatJod._());
}

/// A class that represents the Jordanian Dinar currency.
class FiatJod extends FiatCurrency {
  /// {@template sealed_world.currency_jod_constructor}
  /// Creates a instance of [FiatJod] (Jordanian Dinar currency).
  ///
  /// ISO 4217 Alpha code: `JOD`, ISO 4217 Numeric code: `400`.
  /// {@endtemplate}
  const factory FiatJod() = _JodFactory;

  const FiatJod._()
    : super(
        code: "JOD",
        name: "Jordanian Dinar",
        symbol: "د.ا",
        alternateSymbols: const ["JD"],
        codeNumeric: "400",
        namesNative: const ["دينار أردني"],
        smallestDenomination: 5,
        subunit: "Fils",
        subunitToUnit: 1000,
        unitFirst: true,
      );
}
