part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ZarFactory._(FiatZar _) implements FiatZar {
  const new() : this._(const FiatZar._());
}

/// A class that represents the South African Rand currency.
final class FiatZar extends FiatCurrency {
  /// {@template sealed_world.currency_zar_constructor}
  /// Creates a instance of [FiatZar] (South African Rand currency).
  ///
  /// ISO 4217 Alpha code: `ZAR`, ISO 4217 Numeric code: `710`.
  /// {@endtemplate}
  const factory() = _ZarFactory;

  const new _()
    : super(
        code: "ZAR",
        name: "South African Rand",
        decimalMark: ",",
        thousandsSeparator: " ",
        symbol: "R",
        htmlEntity: "&#x0052;",
        codeNumeric: "710",
        namesNative: const ["Rand"],
        smallestDenomination: 10,
        subunit: "Cent",
        unitFirst: true,
      );
}
