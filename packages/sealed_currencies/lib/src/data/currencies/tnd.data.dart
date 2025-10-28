part of "../../model/currency/currency.dart";

extension type const _TndFactory._(FiatTnd _) implements FiatTnd {
  const _TndFactory() : this._(const FiatTnd._());
}

/// A class that represents the Tunisian Dinar currency.
class FiatTnd extends FiatCurrency {
  /// {@template sealed_world.currency_tnd_constructor}
  /// Creates a instance of [FiatTnd] (Tunisian Dinar currency).
  ///
  /// ISO 4217 Alpha code: `TND`, ISO 4217 Numeric code: `788`.
  /// {@endtemplate}
  const factory FiatTnd() = _TndFactory;

  const FiatTnd._()
    : super(
        code: "TND",
        name: "Tunisian Dinar",
        symbol: "د.ت",
        alternateSymbols: const ["TD", "DT"],
        codeNumeric: "788",
        namesNative: const ["دينار تونسي"],
        smallestDenomination: 10,
        subunit: "Millime",
        subunitToUnit: 1000,
      );
}
