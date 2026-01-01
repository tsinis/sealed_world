part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _LrdFactory._(FiatLrd _) implements FiatLrd {
  const _LrdFactory() : this._(const FiatLrd._());
}

/// A class that represents the Liberian Dollar currency.
final class FiatLrd extends FiatCurrency {
  /// {@template sealed_world.currency_lrd_constructor}
  /// Creates a instance of [FiatLrd] (Liberian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `LRD`, ISO 4217 Numeric code: `430`.
  /// {@endtemplate}
  const factory FiatLrd() = _LrdFactory;

  const FiatLrd._()
    : super(
        code: "LRD",
        name: "Liberian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"L$"],
        disambiguateSymbol: r"L$",
        htmlEntity: r"$",
        codeNumeric: "430",
        namesNative: const ["Liberian dollars"],
        smallestDenomination: 5,
        subunit: "Cent",
      );
}
