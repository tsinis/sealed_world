part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MznFactory._(FiatMzn _) implements FiatMzn {
  const new() : this._(const FiatMzn._());
}

/// A class that represents the Mozambican Metical currency.
final class FiatMzn extends FiatCurrency {
  /// {@template sealed_world.currency_mzn_constructor}
  /// Creates a instance of [FiatMzn] (Mozambican Metical currency).
  ///
  /// ISO 4217 Alpha code: `MZN`, ISO 4217 Numeric code: `943`.
  /// {@endtemplate}
  const factory() = _MznFactory;

  const new _()
    : super(
        code: "MZN",
        name: "Mozambican Metical",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "MTn",
        alternateSymbols: const ["MZN"],
        codeNumeric: "943",
        namesNative: const ["Metical moçambicano"],
        subunit: "Centavo",
        unitFirst: true,
      );
}
