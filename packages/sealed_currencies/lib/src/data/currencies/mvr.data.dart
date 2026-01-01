part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MvrFactory._(FiatMvr _) implements FiatMvr {
  const _MvrFactory() : this._(const FiatMvr._());
}

/// A class that represents the Maldivian Rufiyaa currency.
final class FiatMvr extends FiatCurrency {
  /// {@template sealed_world.currency_mvr_constructor}
  /// Creates a instance of [FiatMvr] (Maldivian Rufiyaa currency).
  ///
  /// ISO 4217 Alpha code: `MVR`, ISO 4217 Numeric code: `462`.
  /// {@endtemplate}
  const factory FiatMvr() = _MvrFactory;

  const FiatMvr._()
    : super(
        code: "MVR",
        name: "Maldivian Rufiyaa",
        alternateSymbols: const ["MRF", "Rf", "/-", "ރ"],
        codeNumeric: "462",
        namesNative: const ["ދިވެހި ރުފިޔާ"],
        subunit: "Laari",
      );
}
