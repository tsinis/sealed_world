part of "../../model/currency/currency.dart";

extension type const _IqdFactory._(FiatIqd _) implements FiatIqd {
  const _IqdFactory() : this._(const FiatIqd._());
}

/// A class that represents the Iraqi Dinar currency.
class FiatIqd extends FiatCurrency {
  /// {@template sealed_world.currency_iqd_constructor}
  /// Creates a instance of [FiatIqd] (Iraqi Dinar currency).
  ///
  /// ISO 4217 Alpha code: `IQD`, ISO 4217 Numeric code: `368`.
  /// {@endtemplate}
  const factory FiatIqd() = _IqdFactory;

  const FiatIqd._()
    : super(
        code: "IQD",
        name: "Iraqi Dinar",
        symbol: "ع.د",
        codeNumeric: "368",
        namesNative: const ["دينار عراقي"],
        smallestDenomination: 50000,
        subunit: "Fils",
        subunitToUnit: 1000,
      );
}
