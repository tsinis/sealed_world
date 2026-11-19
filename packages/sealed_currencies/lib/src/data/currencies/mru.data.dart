part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MruFactory._(FiatMru _) implements FiatMru {
  const new() : this._(const FiatMru._());
}

/// A class that represents the Mauritanian Ouguiya currency.
final class FiatMru extends FiatCurrency {
  /// {@template sealed_world.currency_mru_constructor}
  /// Creates a instance of [FiatMru] (Mauritanian Ouguiya currency).
  ///
  /// ISO 4217 Alpha code: `MRU`, ISO 4217 Numeric code: `929`.
  /// {@endtemplate}
  const factory() = _MruFactory;

  const new _()
    : super(
        code: "MRU",
        name: "Mauritanian Ouguiya",
        symbol: "UM",
        codeNumeric: "929",
        namesNative: const ["أوقية موريتانية"],
        subunit: "Khoums",
        subunitToUnit: 5,
        decimalDigits: 2,
      );
}
