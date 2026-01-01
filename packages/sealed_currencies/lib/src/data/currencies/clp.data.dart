part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ClpFactory._(FiatClp _) implements FiatClp {
  const _ClpFactory() : this._(const FiatClp._());
}

/// A class that represents the Chilean Peso currency.
final class FiatClp extends FiatCurrency {
  /// {@template sealed_world.currency_clp_constructor}
  /// Creates a instance of [FiatClp] (Chilean Peso currency).
  ///
  /// ISO 4217 Alpha code: `CLP`, ISO 4217 Numeric code: `152`.
  /// {@endtemplate}
  const factory FiatClp() = _ClpFactory;

  const FiatClp._()
    : super(
        code: "CLP",
        name: "Chilean Peso",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: r"$",
        disambiguateSymbol: "CLP",
        htmlEntity: "&#36;",
        codeNumeric: "152",
        namesNative: const ["Peso chileno"],
        subunit: "Peso",
        subunitToUnit: 1,
        unitFirst: true,
      );
}
