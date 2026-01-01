part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _XbcFactory._(FiatXbc _) implements FiatXbc {
  const _XbcFactory() : this._(const FiatXbc._());
}

/// A class that represents the European Unit of Account 9 currency.
final class FiatXbc extends FiatCurrency {
  /// {@template sealed_world.currency_xbc_constructor}
  /// Creates a instance of [FiatXbc] (European Unit of Account 9 currency).
  ///
  /// ISO 4217 Alpha code: `XBC`, ISO 4217 Numeric code: `957`.
  /// {@endtemplate}
  const factory FiatXbc() = _XbcFactory;

  const FiatXbc._()
    : super(
        code: "XBC",
        name: "European Unit of Account 9",
        disambiguateSymbol: "XBC",
        codeNumeric: "957",
        namesNative: const ["European Unit of Account 9 (E.U.A.-9)"],
        smallestDenomination: 0,
        subunitToUnit: 1,
      );
}
