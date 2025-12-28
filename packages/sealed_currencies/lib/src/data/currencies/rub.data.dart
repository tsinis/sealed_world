part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _RubFactory._(FiatRub _) implements FiatRub {
  const _RubFactory() : this._(const FiatRub._());
}

/// A class that represents the Russian Ruble currency.
final class FiatRub extends FiatCurrency {
  /// {@template sealed_world.currency_rub_constructor}
  /// Creates a instance of [FiatRub] (Russian Ruble currency).
  ///
  /// ISO 4217 Alpha code: `RUB`, ISO 4217 Numeric code: `643`.
  /// {@endtemplate}
  const factory FiatRub() = _RubFactory;

  const FiatRub._()
    : super(
        code: "RUB",
        name: "Russian Ruble",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "₽",
        alternateSymbols: const ["руб.", "р."],
        htmlEntity: "&#x20BD;",
        codeNumeric: "643",
        namesNative: const ["Российский рубль"],
        subunit: "Kopeck",
      );
}
