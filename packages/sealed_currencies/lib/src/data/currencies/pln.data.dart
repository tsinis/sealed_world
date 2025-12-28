part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _PlnFactory._(FiatPln _) implements FiatPln {
  const _PlnFactory() : this._(const FiatPln._());
}

/// A class that represents the Polish Zloty currency.
final class FiatPln extends FiatCurrency {
  /// {@template sealed_world.currency_pln_constructor}
  /// Creates a instance of [FiatPln] (Polish Zloty currency).
  ///
  /// ISO 4217 Alpha code: `PLN`, ISO 4217 Numeric code: `985`.
  /// {@endtemplate}
  const factory FiatPln() = _PlnFactory;

  const FiatPln._()
    : super(
        code: "PLN",
        name: "Polish Zloty",
        decimalMark: ",",
        thousandsSeparator: " ",
        symbol: "zł",
        htmlEntity: "z&#322;",
        codeNumeric: "985",
        namesNative: const ["Polski złoty"],
        subunit: "Grosz",
      );
}
