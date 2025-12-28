part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MmkFactory._(FiatMmk _) implements FiatMmk {
  const _MmkFactory() : this._(const FiatMmk._());
}

/// A class that represents the Myanmar Kyat currency.
final class FiatMmk extends FiatCurrency {
  /// {@template sealed_world.currency_mmk_constructor}
  /// Creates a instance of [FiatMmk] (Myanmar Kyat currency).
  ///
  /// ISO 4217 Alpha code: `MMK`, ISO 4217 Numeric code: `104`.
  /// {@endtemplate}
  const factory FiatMmk() = _MmkFactory;

  const FiatMmk._()
    : super(
        code: "MMK",
        name: "Myanmar Kyat",
        symbol: "K",
        disambiguateSymbol: "MMK",
        codeNumeric: "104",
        namesNative: const ["ကျပ်"],
        smallestDenomination: 50,
        subunit: "Pya",
      );
}
