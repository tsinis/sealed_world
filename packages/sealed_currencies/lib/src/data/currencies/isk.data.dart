part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _IskFactory._(FiatIsk _) implements FiatIsk {
  const new() : this._(const FiatIsk._());
}

/// A class that represents the Icelandic Króna currency.
final class FiatIsk extends FiatCurrency {
  /// {@template sealed_world.currency_isk_constructor}
  /// Creates a instance of [FiatIsk] (Icelandic Króna currency).
  ///
  /// ISO 4217 Alpha code: `ISK`, ISO 4217 Numeric code: `352`.
  /// {@endtemplate}
  const factory() = _IskFactory;

  const new _()
    : super(
        code: "ISK",
        name: "Icelandic Króna",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "kr.",
        alternateSymbols: const ["Íkr"],
        codeNumeric: "352",
        namesNative: const ["íslensk króna"],
        subunitToUnit: 1,
      );
}
