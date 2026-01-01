part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _XofFactory._(FiatXof _) implements FiatXof {
  const _XofFactory() : this._(const FiatXof._());
}

/// A class that represents the West African Cfa Franc currency.
final class FiatXof extends FiatCurrency {
  /// {@template sealed_world.currency_xof_constructor}
  /// Creates a instance of [FiatXof] (West African Cfa Franc currency).
  ///
  /// ISO 4217 Alpha code: `XOF`, ISO 4217 Numeric code: `952`.
  /// {@endtemplate}
  const factory FiatXof() = _XofFactory;

  const FiatXof._()
    : super(
        code: "XOF",
        name: "West African Cfa Franc",
        symbol: "Fr",
        alternateSymbols: const ["CFA"],
        disambiguateSymbol: "CFA",
        codeNumeric: "952",
        namesNative: const ["CFA Franc BCEAO"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
