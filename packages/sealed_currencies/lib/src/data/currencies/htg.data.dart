part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _HtgFactory._(FiatHtg _) implements FiatHtg {
  const _HtgFactory() : this._(const FiatHtg._());
}

/// A class that represents the Haitian Gourde currency.
final class FiatHtg extends FiatCurrency {
  /// {@template sealed_world.currency_htg_constructor}
  /// Creates a instance of [FiatHtg] (Haitian Gourde currency).
  ///
  /// ISO 4217 Alpha code: `HTG`, ISO 4217 Numeric code: `332`.
  /// {@endtemplate}
  const factory FiatHtg() = _HtgFactory;

  const FiatHtg._()
    : super(
        code: "HTG",
        name: "Haitian Gourde",
        symbol: "G",
        codeNumeric: "332",
        namesNative: const ["goud ayisyen"],
        smallestDenomination: 5,
        subunit: "Centime",
      );
}
