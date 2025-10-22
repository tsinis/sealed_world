part of "../../model/currency/currency.dart";

extension type const _DzdFactory._(FiatDzd _) implements FiatDzd {
  const _DzdFactory() : this._(const FiatDzd._());
}

/// A class that represents the the Algerian Dinar currency.
class FiatDzd extends FiatCurrency {
  /// {@template sealed_world.currency_dzd_constructor}
  /// Creates a instance of [FiatDzd] (Algerian Dinar currency).
  ///
  /// ISO 4217 Alpha code: `DZD`, ISO 4217 Numeric code: `012`.
  /// {@endtemplate}
  const factory FiatDzd() = _DzdFactory;

  const FiatDzd._()
    : super(
        code: "DZD",
        name: "Algerian Dinar",
        symbol: "د.ج",
        alternateSymbols: const ["DA"],
        codeNumeric: "012",
        namesNative: const ["دينار جزائري"],
        smallestDenomination: 100,
        subunit: "Centime",
      );
}
