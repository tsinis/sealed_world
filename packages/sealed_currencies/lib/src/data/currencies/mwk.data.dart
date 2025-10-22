part of "../../model/currency/currency.dart";

extension type const _MwkFactory._(FiatMwk _) implements FiatMwk {
  const _MwkFactory() : this._(const FiatMwk._());
}

/// A class that represents the the Malawian Kwacha currency.
class FiatMwk extends FiatCurrency {
  /// {@template sealed_world.currency_mwk_constructor}
  /// Creates a instance of [FiatMwk] (Malawian Kwacha currency).
  ///
  /// ISO 4217 Alpha code: `MWK`, ISO 4217 Numeric code: `454`.
  /// {@endtemplate}
  const factory FiatMwk() = _MwkFactory;

  const FiatMwk._()
    : super(
        code: "MWK",
        name: "Malawian Kwacha",
        symbol: "MK",
        codeNumeric: "454",
        namesNative: const ["Malawian kwacha"],
        subunit: "Tambala",
      );
}
