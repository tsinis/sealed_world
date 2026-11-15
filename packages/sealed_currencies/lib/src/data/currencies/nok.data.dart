part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _NokFactory._(FiatNok _) implements FiatNok {
  const new() : this._(const FiatNok._());
}

/// A class that represents the Norwegian Krone currency.
final class FiatNok extends FiatCurrency {
  /// {@template sealed_world.currency_nok_constructor}
  /// Creates a instance of [FiatNok] (Norwegian Krone currency).
  ///
  /// ISO 4217 Alpha code: `NOK`, ISO 4217 Numeric code: `578`.
  /// {@endtemplate}
  const factory() = _NokFactory;

  const new _()
    : super(
        code: "NOK",
        name: "Norwegian Krone",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "kr",
        alternateSymbols: const ["krone"],
        disambiguateSymbol: "NOK",
        htmlEntity: "kr",
        codeNumeric: "578",
        namesNative: const ["Norsk krone"],
        smallestDenomination: 100,
        subunit: "Øre",
      );
}
