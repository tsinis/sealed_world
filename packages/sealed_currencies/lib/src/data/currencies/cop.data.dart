part of "../../model/currency/currency.dart";

extension type const _CopFactory._(FiatCop _) implements FiatCop {
  const _CopFactory() : this._(const FiatCop._());
}

/// A class that represents the the Colombian Peso currency.
class FiatCop extends FiatCurrency {
  /// {@template sealed_world.currency_cop_constructor}
  /// Creates a instance of [FiatCop] (Colombian Peso currency).
  ///
  /// ISO 4217 Alpha code: `COP`, ISO 4217 Numeric code: `170`.
  /// {@endtemplate}
  const factory FiatCop() = _CopFactory;

  const FiatCop._()
    : super(
        code: "COP",
        name: "Colombian Peso",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: r"$",
        alternateSymbols: const [r"COL$"],
        disambiguateSymbol: r"COL$",
        htmlEntity: "&#36;",
        codeNumeric: "170",
        namesNative: const ["peso colombiano"],
        smallestDenomination: 20,
        subunit: "Centavo",
        unitFirst: true,
      );
}
