part of "../../model/currency/currency.dart";

extension type const _KgsFactory._(FiatKgs _) implements FiatKgs {
  const _KgsFactory() : this._(const FiatKgs._());
}

/// A class that represents the the Kyrgyzstani Som currency.
class FiatKgs extends FiatCurrency {
  /// {@template sealed_world.currency_kgs_constructor}
  /// Creates a instance of [FiatKgs] (Kyrgyzstani Som currency).
  ///
  /// ISO 4217 Alpha code: `KGS`, ISO 4217 Numeric code: `417`.
  /// {@endtemplate}
  const factory FiatKgs() = _KgsFactory;

  const FiatKgs._()
    : super(
        code: "KGS",
        name: "Kyrgyzstani Som",
        symbol: "som",
        alternateSymbols: const ["сом"],
        codeNumeric: "417",
        namesNative: const ["Кыргыз сом"],
        subunit: "Tyiyn",
      );
}
