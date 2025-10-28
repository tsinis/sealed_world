part of "../../model/currency/currency.dart";

extension type const _XbdFactory._(FiatXbd _) implements FiatXbd {
  const _XbdFactory() : this._(const FiatXbd._());
}

/// A class that represents the European Unit of Account 17 currency.
class FiatXbd extends FiatCurrency {
  /// {@template sealed_world.currency_xbd_constructor}
  /// Creates a instance of [FiatXbd] (European Unit of Account 17 currency).
  ///
  /// ISO 4217 Alpha code: `XBD`, ISO 4217 Numeric code: `958`.
  /// {@endtemplate}
  const factory FiatXbd() = _XbdFactory;

  const FiatXbd._()
    : super(
        code: "XBD",
        name: "European Unit of Account 17",
        disambiguateSymbol: "XBD",
        codeNumeric: "958",
        namesNative: const ["European Unit of Account 17 (E.U.A.-17)"],
        smallestDenomination: 0,
        subunitToUnit: 1,
      );
}
