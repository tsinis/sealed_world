part of "../../model/currency/currency.dart";

extension type const _NprFactory._(FiatNpr _) implements FiatNpr {
  const _NprFactory() : this._(const FiatNpr._());
}

/// A class that represents the Nepalese Rupee currency.
class FiatNpr extends FiatCurrency {
  /// {@template sealed_world.currency_npr_constructor}
  /// Creates a instance of [FiatNpr] (Nepalese Rupee currency).
  ///
  /// ISO 4217 Alpha code: `NPR`, ISO 4217 Numeric code: `524`.
  /// {@endtemplate}
  const factory FiatNpr() = _NprFactory;

  const FiatNpr._()
    : super(
        code: "NPR",
        name: "Nepalese Rupee",
        symbol: "Rs.",
        alternateSymbols: const ["Rs", "रू", "₨"],
        disambiguateSymbol: "NPR",
        htmlEntity: "&#x20A8;",
        codeNumeric: "524",
        namesNative: const ["रुपैयाँ"],
        subunit: "Paisa",
        unitFirst: true,
      );
}
