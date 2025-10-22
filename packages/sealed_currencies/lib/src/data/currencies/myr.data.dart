part of "../../model/currency/currency.dart";

extension type const _MyrFactory._(FiatMyr _) implements FiatMyr {
  const _MyrFactory() : this._(const FiatMyr._());
}

/// A class that represents the the Malaysian Ringgit currency.
class FiatMyr extends FiatCurrency {
  /// {@template sealed_world.currency_myr_constructor}
  /// Creates a instance of [FiatMyr] (Malaysian Ringgit currency).
  ///
  /// ISO 4217 Alpha code: `MYR`, ISO 4217 Numeric code: `458`.
  /// {@endtemplate}
  const factory FiatMyr() = _MyrFactory;

  const FiatMyr._()
    : super(
        code: "MYR",
        name: "Malaysian Ringgit",
        symbol: "RM",
        codeNumeric: "458",
        namesNative: const ["Ringgit Malaysia"],
        smallestDenomination: 5,
        subunit: "Sen",
        unitFirst: true,
      );
}
