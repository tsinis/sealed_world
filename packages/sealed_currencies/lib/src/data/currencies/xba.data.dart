part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _XbaFactory._(FiatXba _) implements FiatXba {
  const _XbaFactory() : this._(const FiatXba._());
}

/// A class that represents the European Composite Unit currency.
final class FiatXba extends FiatCurrency {
  /// {@template sealed_world.currency_xba_constructor}
  /// Creates a instance of [FiatXba] (European Composite Unit currency).
  ///
  /// ISO 4217 Alpha code: `XBA`, ISO 4217 Numeric code: `955`.
  /// {@endtemplate}
  const factory FiatXba() = _XbaFactory;

  const FiatXba._()
    : super(
        code: "XBA",
        name: "European Composite Unit",
        disambiguateSymbol: "XBA",
        codeNumeric: "955",
        namesNative: const ["European Composite Unit (EURCO)"],
        smallestDenomination: 0,
        subunitToUnit: 1,
      );
}
