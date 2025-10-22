part of "../../model/currency/currency.dart";

extension type const _TryFactory._(FiatTry _) implements FiatTry {
  const _TryFactory() : this._(const FiatTry._());
}

/// A class that represents the the Turkish Lira currency.
class FiatTry extends FiatCurrency {
  /// {@template sealed_world.currency_try_constructor}
  /// Creates a instance of [FiatTry] (Turkish Lira currency).
  ///
  /// ISO 4217 Alpha code: `TRY`, ISO 4217 Numeric code: `949`.
  /// {@endtemplate}
  const factory FiatTry() = _TryFactory;

  const FiatTry._()
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
