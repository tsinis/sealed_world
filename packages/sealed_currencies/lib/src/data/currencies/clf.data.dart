part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ClfFactory._(FiatClf _) implements FiatClf {
  const _ClfFactory() : this._(const FiatClf._());
}

/// A class that represents the Chilean Unit of Account (UF) currency.
final class FiatClf extends FiatCurrency {
  /// {@template sealed_world.currency_clf_constructor}
  /// Creates a instance of [FiatClf] (Chilean Unit of Account (UF) currency).
  ///
  /// ISO 4217 Alpha code: `CLF`, ISO 4217 Numeric code: `990`.
  /// {@endtemplate}
  const factory FiatClf() = _ClfFactory;

  const FiatClf._()
    : super(
        code: "CLF",
        name: "Chilean Unit of Account (UF)",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "UF",
        htmlEntity: "&#x20B1;",
        codeNumeric: "990",
        namesNative: const ["Unidad de Fomento"],
        smallestDenomination: 0,
        subunit: "Peso",
        subunitToUnit: 10000,
        unitFirst: true,
      );
}
