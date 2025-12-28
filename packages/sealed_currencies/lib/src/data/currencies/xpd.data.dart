part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _XpdFactory._(FiatXpd _) implements FiatXpd {
  const _XpdFactory() : this._(const FiatXpd._());
}

/// A class that represents the Palladium currency.
final class FiatXpd extends FiatCurrency {
  /// {@template sealed_world.currency_xpd_constructor}
  /// Creates a instance of [FiatXpd] (Palladium currency).
  ///
  /// ISO 4217 Alpha code: `XPD`, ISO 4217 Numeric code: `964`.
  /// {@endtemplate}
  const factory FiatXpd() = _XpdFactory;

  const FiatXpd._()
    : super(
        code: "XPD",
        name: "Palladium",
        symbol: "oz t",
        disambiguateSymbol: "XPD",
        codeNumeric: "964",
        namesNative: const ["Palladium"],
        smallestDenomination: 0,
        subunit: "oz",
        subunitToUnit: 1,
      );
}
