part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _BynFactory._(FiatByn _) implements FiatByn {
  const _BynFactory() : this._(const FiatByn._());
}

/// A class that represents the Belarusian Ruble currency.
final class FiatByn extends FiatCurrency {
  /// {@template sealed_world.currency_byn_constructor}
  /// Creates a instance of [FiatByn] (Belarusian Ruble currency).
  ///
  /// ISO 4217 Alpha code: `BYN`, ISO 4217 Numeric code: `933`.
  /// {@endtemplate}
  const factory FiatByn() = _BynFactory;

  const FiatByn._()
    : super(
        code: "BYN",
        name: "Belarusian Ruble",
        decimalMark: ",",
        thousandsSeparator: " ",
        symbol: "Br",
        alternateSymbols: const ["бел. руб.", "б.р.", "руб.", "р."],
        disambiguateSymbol: "BYN",
        codeNumeric: "933",
        namesNative: const ["Беларускі рубель", "Белорусский рубль"],
        subunit: "Kapeyka",
      );
}
