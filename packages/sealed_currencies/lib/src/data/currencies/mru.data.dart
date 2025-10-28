part of "../../model/currency/currency.dart";

extension type const _MruFactory._(FiatMru _) implements FiatMru {
  const _MruFactory() : this._(const FiatMru._());
}

/// A class that represents the Mauritanian Ouguiya currency.
class FiatMru extends FiatCurrency {
  /// {@template sealed_world.currency_mru_constructor}
  /// Creates a instance of [FiatMru] (Mauritanian Ouguiya currency).
  ///
  /// ISO 4217 Alpha code: `MRU`, ISO 4217 Numeric code: `929`.
  /// {@endtemplate}
  const factory FiatMru() = _MruFactory;

  const FiatMru._()
    : super(
        code: "MRU",
        name: "Mauritanian Ouguiya",
        symbol: "UM",
        codeNumeric: "929",
        namesNative: const ["أوقية موريتانية"],
        subunit: "Khoums",
        subunitToUnit: 5,
      );
}
