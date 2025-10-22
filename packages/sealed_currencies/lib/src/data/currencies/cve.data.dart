part of "../../model/currency/currency.dart";

extension type const _CveFactory._(FiatCve _) implements FiatCve {
  const _CveFactory() : this._(const FiatCve._());
}

/// A class that represents the the Cape Verdean Escudo currency.
class FiatCve extends FiatCurrency {
  /// {@template sealed_world.currency_cve_constructor}
  /// Creates a instance of [FiatCve] (Cape Verdean Escudo currency).
  ///
  /// ISO 4217 Alpha code: `CVE`, ISO 4217 Numeric code: `132`.
  /// {@endtemplate}
  const factory FiatCve() = _CveFactory;

  const FiatCve._()
    : super(
        code: "CVE",
        name: "Cape Verdean Escudo",
        symbol: r"$",
        alternateSymbols: const ["Esc"],
        disambiguateSymbol: "Esc",
        codeNumeric: "132",
        namesNative: const ["eskudu kabu-verdianu"],
        smallestDenomination: 100,
        subunit: "Centavo",
      );
}
