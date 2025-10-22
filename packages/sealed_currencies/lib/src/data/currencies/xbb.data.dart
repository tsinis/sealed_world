part of "../../model/currency/currency.dart";

extension type const _XbbFactory._(FiatXbb _) implements FiatXbb {
  const _XbbFactory() : this._(const FiatXbb._());
}

/// A class that represents the European Monetary Unit currency.
class FiatXbb extends FiatCurrency {
  /// {@template sealed_world.currency_xbb_constructor}
  /// Creates a instance of [FiatXbb] (European Monetary Unit currency).
  ///
  /// ISO 4217 Alpha code: `XBB`, ISO 4217 Numeric code: `956`.
  /// {@endtemplate}
  const factory FiatXbb() = _XbbFactory;

  const FiatXbb._()
    : super(
        code: "XBB",
        name: "European Monetary Unit",
        disambiguateSymbol: "XBB",
        codeNumeric: "956",
        namesNative: const ["European Monetary Unit (E.M.U.-6)"],
        smallestDenomination: 0,
        subunitToUnit: 1,
      );
}
