part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _TryFactory._(FiatTry _) implements FiatTry {
  const new() : this._(const FiatTry._());
}

/// A class that represents the Turkish Lira currency.
final class FiatTry extends FiatCurrency {
  /// {@template sealed_world.currency_try_constructor}
  /// Creates a instance of [FiatTry] (Turkish Lira currency).
  ///
  /// ISO 4217 Alpha code: `TRY`, ISO 4217 Numeric code: `949`.
  /// {@endtemplate}
  const factory() = _TryFactory;

  const new _()
    : super(
        code: "TRY",
        name: "Turkish Lira",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "₺",
        alternateSymbols: const ["TL"],
        htmlEntity: "&#8378;",
        codeNumeric: "949",
        namesNative: const ["Türk lirası"],
        subunit: "kuruş",
        unitFirst: true,
      );
}
