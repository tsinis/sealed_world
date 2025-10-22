part of "../../model/currency/currency.dart";

extension type const _XafFactory._(FiatXaf _) implements FiatXaf {
  const _XafFactory() : this._(const FiatXaf._());
}

/// A class that represents the the Central African Cfa Franc currency.
class FiatXaf extends FiatCurrency {
  /// {@template sealed_world.currency_xaf_constructor}
  /// Creates a instance of [FiatXaf] (Central African Cfa Franc currency).
  ///
  /// ISO 4217 Alpha code: `XAF`, ISO 4217 Numeric code: `950`.
  /// {@endtemplate}
  const factory FiatXaf() = _XafFactory;

  const FiatXaf._()
    : super(
        code: "XAF",
        name: "Central African Cfa Franc",
        symbol: "CFA",
        alternateSymbols: const ["FCFA"],
        disambiguateSymbol: "FCFA",
        codeNumeric: "950",
        namesNative: const ["franc CFA"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
