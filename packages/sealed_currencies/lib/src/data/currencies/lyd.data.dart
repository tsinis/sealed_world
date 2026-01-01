part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _LydFactory._(FiatLyd _) implements FiatLyd {
  const _LydFactory() : this._(const FiatLyd._());
}

/// A class that represents the Libyan Dinar currency.
final class FiatLyd extends FiatCurrency {
  /// {@template sealed_world.currency_lyd_constructor}
  /// Creates a instance of [FiatLyd] (Libyan Dinar currency).
  ///
  /// ISO 4217 Alpha code: `LYD`, ISO 4217 Numeric code: `434`.
  /// {@endtemplate}
  const factory FiatLyd() = _LydFactory;

  const FiatLyd._()
    : super(
        code: "LYD",
        name: "Libyan Dinar",
        symbol: "ل.د",
        alternateSymbols: const ["LD"],
        codeNumeric: "434",
        namesNative: const ["دينار ليبي"],
        smallestDenomination: 50,
        subunit: "Dirham",
        subunitToUnit: 1000,
      );
}
