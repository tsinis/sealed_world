part of "../../model/currency/currency.dart";

extension type const _DopFactory._(FiatDop _) implements FiatDop {
  const _DopFactory() : this._(const FiatDop._());
}

/// A class that represents the Dominican Peso currency.
class FiatDop extends FiatCurrency {
  /// {@template sealed_world.currency_dop_constructor}
  /// Creates a instance of [FiatDop] (Dominican Peso currency).
  ///
  /// ISO 4217 Alpha code: `DOP`, ISO 4217 Numeric code: `214`.
  /// {@endtemplate}
  const factory FiatDop() = _DopFactory;

  const FiatDop._()
    : super(
        code: "DOP",
        name: "Dominican Peso",
        symbol: r"$",
        alternateSymbols: const [r"RD$"],
        disambiguateSymbol: r"RD$",
        htmlEntity: "&#x20B1;",
        codeNumeric: "214",
        namesNative: const ["Dominican peso"],
        smallestDenomination: 100,
        subunit: "Centavo",
        unitFirst: true,
      );
}
